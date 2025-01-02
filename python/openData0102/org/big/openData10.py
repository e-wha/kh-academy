'''
Created on 2025. 1. 2.

@author: user
'''

import requests
from bs4 import BeautifulSoup

req = requests.get('http://unico2013.dothome.co.kr/crawling/exercise_css.html')
html = req.content
html = html.decode('utf-8')
print(html)
print("============================================")
bs = BeautifulSoup(html, 'html.parser')
title = bs.select('h1')
title1 = bs.select('#f_subtitle')
title2 = bs.select('.subtitle')
title3 = bs.select('aside > h2')
img = bs.select('[src]')

print("<h1> 태그의 갯수 : %d" %len(title))
print("f_subtitle 이라는 id 속성을 갖는 태그의 갯수 : %d" %len(title1))
print("============================================")
for content in title:
    print(content.string)
print("============================================")
for content in title1:
    print(content.string)
print("============================================")
for content in img:
    print(content['src'])