'''
Created on 2025. 1. 2.

@author: user
'''

from bs4 import BeautifulSoup
import urllib.request as req

busNum = '360'
key = '인증키'
url = 'http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?'
ServiceKey="+key+&strSrch='+busNum'"
saveName = "C:/Temp/businfo.xml"

xml = open(saveName, 'r', encoding='utf-8').read()
soup = BeautifulSoup(xml, 'xml')
busRouteId = None
for itemList in soup.find_all('itemList'):
    busRouteId = itemList.find('busRouteId').string
    busRouteNm = itemList.find('busRouteNm').string
    if busRouteNm == busNum:
        break
    
url2 = 