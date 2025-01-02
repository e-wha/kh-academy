'''
Created on 2025. 1. 2.

@author: user
'''
import requests
from PIL import Image
from io import BytesIO
r = requests.get('http://unico2013.dothome.co.kr/image/flower.jpg')
i = Image.open(BytesIO(r.content))
print(type(i))
i.save("c:/Temp/test.jpg")