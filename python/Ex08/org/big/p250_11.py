inStr, outStr, numStr, lowerStr, upperStr, hanStr, etcStr = [''] * 7
inStr = "파이썬 ### CookBook $$$ @@@ 열공중 1234"
inStr = "IT CookBook 파이썬을 365일 공부하고 있습니다."

for i in inStr:
    # if inStr[i].isalpha() == True:
    #     outStr += inStr[i]
    if (ord(i) >= ord("A") and ord(i) <= ord("Z")):
        upperStr += i
    elif (ord(i) >= ord("a") and ord(i) <= ord("z")):
        lowerStr += i
    elif (ord(i) >= ord("0") and ord(i) <= ord("9")):
        numStr += i
    elif (ord(i) >= ord("가") and ord(i) <= ord("힣")):
        hanStr += i
    else:
        etcStr += i
        
# print("한글/영문자만 남김 ==> %s" %outStr)
print("대문자 : %s" %upperStr)
print("소문자 : %s" %lowerStr)
print("숫자 : %s" %numStr)
print("한글 : %s" %hanStr)
print("기타문자 : %s" %etcStr)