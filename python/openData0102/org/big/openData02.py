'''
Created on 2025. 1. 2.

@author: user
'''
import urllib.request

res = urllib.request.urlopen("http://www.naver.com")

print(type(res))
print(res.status)
print(res.version)
print(res.msg)

res_header = res.getheaders()

for str in res_header:
    print(str)
    
print("[body]---------------------")

print(res.body)