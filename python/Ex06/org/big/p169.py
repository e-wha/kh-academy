hap = 0
a, b = 0, 0

while True:
    a = input("더할 첫 번째 수를 입력하세요 : ")
    if a == "$":
        break
    b = input("더할 두 번째 수를 입력하세요 : ")
    if b == "$":
        break
    hap = int(a) + int(b)
    print("%d + %d = %d" %(int(a), int(b), hap))

print("$을 입력해 반복문을 탈출했습니다.")