inStr = ''

if __name__ == "__main__":
    inStr = input("문자열을 입력 ==> ")
    print("문자열 길이 :", len(inStr))
    
    for i in range(len(inStr)-1, -1, -1):
        print('%c' %inStr[i], end=' ')