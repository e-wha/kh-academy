'''
Created on 2025. 1. 2.

@author: user
'''
import urllib.request
import urllib.parse

params = urllib.parse.urlencode({'name': '유니코', 'age': 10})
print("URL 인코딩 규칙이 적용된 문자열: %s" % params)

url = "http://unico2013.dothome.co.kr/crawling/get.php?%s" % params
with urllib.request.urlopen(url) as f:
    print(f.read().decode('utf-8'))