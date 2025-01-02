'''
Created on 2025. 1. 2.

@author: user
'''
from urllib.parse import urlparse
from urllib.parse import urlencode
print("[ URL 문자열 정보 추출 1 ]")
url1 = urlparse('https://movie.daum.net/moviedb/main?movieId=93252')
print("타입정보 : ",type(url1))
print("도메인정보 : ",url1.netloc) 
print("패스정보 : ",url1.path)
print("쿼리정보 : ",url1.query) 
print("스킴정보 : ",url1.scheme)
print("포트정보 : ",url1.port)
print("프래그먼트정보 : ",url1.fragment)
print("URL 문자열정보 : ",url1.geturl())
print("urllib.parse.ParseResult 객체정보 : ",url1)
print("\n[ URL 문자열 정보 추출 2 ]")
url2 = urlparse('https://docs.python.org/3/library/urllib.parse.html#urlparse-result-object')
print("도메인정보 : ",url2.netloc) 
print("패스정보 : ", url2.path)  
print("쿼리정보 : ",url2.query)
print("스킴정보 : ",url2.scheme)
print("포트정보 : ",url2.port)
print("프래그먼트정보 : ",url2.fragment)
print("URL 문자열정보 : ",url2.geturl())
print("urllib.parse.ParseResult 객체정보 : ",url2)

print("\n[ Query문자열 또는 요청 파라미터 인코딩 ]")
params1 = urlencode({'number': 12524, 'type': 'issue', 'action': 'show'})
print(params1)
params2 = urlencode({'addr': '서울시 강남구 역삼동'})
print(params2)