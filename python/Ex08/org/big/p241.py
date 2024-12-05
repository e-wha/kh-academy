inStr = " 한글 Python 프로그래밍"
outStr = ""

for i in range(len(inStr)):
    if inStr[i] != ' ':
        outStr += inStr[i]
        
print("원래 문자열 ==> [%s]" %inStr)
print("공백 삭제 문자열 ==> [%s]" %outStr)