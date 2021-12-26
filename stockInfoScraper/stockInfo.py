import datetime
from requests import get
import json
from pyquery import PyQuery as pq
from .models import StockInfo, TradeRecord
from django.db.models import Sum
import pytz


class StockInfoView:
    def __init__(self):
        # info of multiple stocks, single day
        # self.endPoint1 = "https://www.twse.com.tw/exchangeReport/MI_INDEX"
        self.endPoint = "https://mis.twse.com.tw/stock/api/getStockInfo.jsp?ex_ch="

        # info of single stock, multiple days
        # self.endPoint2 = "https://www.twse.com.tw/exchangeReport/STOCK_DAY?response=json&date=20210809&stockNo=2330"
        self.result = []

    def fetchAndStore(self, sidList, date):
        if sidList == []:
            return
        try:
            allData = []
            res = []
            queryStr = ""
            for each in sidList:
                queryStr += ("tse_" + each + ".tw|")
                queryStr += ("otc_" + each + ".tw|")
            try:
                res = get(self.endPoint + queryStr)
                res = json.loads(pq(res.text).text())["msgArray"]
            except:
                print("failed to fetch")
                return

            # arrange the data format
            for each in res:
                dataRow = {}
                try:
                    dataRow["date"] = date
                    dataRow["sid"] = each["ch"].split('.')[0]
                    dataRow["companyName"] = each["n"]
                    dataRow["tradeType"] = each["ex"]
                    dataRow["quantity"] = each["v"]
                    dataRow["openPrice"] = str(round(float(each["o"]), 2))
                    try:  # 收漲停時，z 會是 "-"，所以改看最高價
                        dataRow["closePrice"] = str(round(float(each["z"]), 2))
                    except:
                        dataRow["closePrice"] = str(round(float(each["h"]), 2))
                    dataRow["highestPrice"] = str(round(float(each["h"]), 2))
                    dataRow["lowestPrice"] = str(round(float(each["l"]), 2))
                    dataRow["fluctPrice"] = str(
                        round((float(dataRow["closePrice"])-float(each["y"])), 2))
                    dataRow["fluctRate"] = str(
                        round((float(dataRow["closePrice"])-float(each["y"]))/float(each["y"]), 4))
                except:
                    continue
                allData.append(dataRow)

            # store
            for each in allData:
                StockInfo.objects.update_or_create(
                    sid=each["sid"],
                    defaults=each
                )

            # prepare result
            q = StockInfo.objects.filter(sid__in=sidList)
            for each in q:
                self.result.append(
                    {
                        "date": each.date,
                        "sid": each.sid,
                        "name": each.companyName,
                        "trade-type": each.tradeType,
                        "quantity": each.quantity,
                        "open": each.openPrice,
                        "close": each.closePrice,
                        "highest": each.highestPrice,
                        "lowest": each.lowestPrice,
                        "fluct-price": each.fluctPrice,
                        "fluct-rate": each.fluctRate
                    }
                )
        except Exception as e:
            raise e

    def stocksSingleDay(self, date=(datetime.datetime.now(pytz.utc) + datetime.timedelta(hours=8)).strftime("%Y%m%d"), sidList=[]):
        currentHour = int((datetime.datetime.now(pytz.utc) +
                           datetime.timedelta(hours=8)).strftime("%H"))
        if currentHour < 14:
            date = datetime.datetime.strptime(
                date, "%Y%m%d")-datetime.timedelta(days=1)
            date = date.strftime("%Y%m%d")
        date = int(date)

        if sidList == []:
            # SELECT sid from TradeRecord GROUP BY sid HAVING SUM(dealQuantity) > 0
            autoSidQuery = TradeRecord.objects.values('sid').annotate(
                sum=Sum('dealQuantity')).filter(sum__gt=0).values('sid')
            for each in autoSidQuery:
                sidList.append(each["sid"])

        try:
            needToFetchSidList = []
            for eachSid in sidList:
                q = StockInfo.objects.filter(sid=eachSid)
                if q:
                    q = q.get()
                    if int(q.date) != date or not q.sid or not q.companyName or not q.tradeType:
                        needToFetchSidList.append(eachSid)
                    else:
                        self.result.append(
                            {
                                "date": q.date,
                                "sid": q.sid,
                                "name": q.companyName,
                                "trade-type": q.tradeType,
                                "quantity": q.quantity,
                                "open": q.openPrice,
                                "close": q.closePrice,
                                "highest": q.highestPrice,
                                "lowest": q.lowestPrice,
                                "fluct-price": q.fluctPrice,
                                "fluct-rate": q.fluctRate
                            }
                        )
                else:
                    needToFetchSidList.append(eachSid)
            self.fetchAndStore(needToFetchSidList, date)
        except Exception as e:
            raise e
