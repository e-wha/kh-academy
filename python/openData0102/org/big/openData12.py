'''
Created on 2025. 1. 2.

@author: user
'''

from bs4 import BeautifulSoup
import urllib.request as req
import io

url = "http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=108"
saveName = "C:/Temp/forecast.xml"
req.urlretrieve(url, saveName)

xml = open(saveName, "r", encoding="utf-8").read()
soup = BeautifulSoup(xml, 'html.parser')

info = {}
for location in soup.find_all("location"):
    loc = location.find('city').string
    min_w = location.find_all('tmn')
    max_w = location.find_all('tmx')
    weather = [a.string+"~"+b.string for a, b in zip(min_w, max_w)]
    
    if not (loc in info):
        info[loc] = []
    for data in weather:
        info[loc].append(data)
print(info)

with open('C:/Temp/forecast.xml', 'wt', encoding="utf-8") as f:
    for loc in sorted(info.keys()):
        f.write(str(loc)+'\n')
        for name in info[loc]:
            f.write('/t'+str(name)+'\t')