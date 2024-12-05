inStr = 'IT_CookBook_Python'
outStr = ''

for i in range(len(inStr)):
    if i % 2 == 0:
        outStr += inStr[len(inStr) - (i+1)]
    else:
        outStr += '#'
        
print("원본내용 ==> %s" %inStr)
print("변경내용 ==> %s" %outStr)