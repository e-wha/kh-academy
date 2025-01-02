'''
Created on 2025. 1. 2.

@author: user
'''
import requests
from bs4 import BeautifulSoup

title = []
link = []


urlStr = "https://www.yes24.com/Product/Search?domain=ALL&query=python"
r = requests.get(urlStr)
bs = BeautifulSoup(r.text, 'html.parser')

titleList = bs.select('a.gd_name')
print(titleList)
linkList = bs.select('a.gd_name')
for titleDom in titleList:
    title.append(titleDom.string)

for linkDom in linkList:
    link.append(linkDom['href'])
    
print("==도서제목==")
print(title)

print("==링크==")
print(link)