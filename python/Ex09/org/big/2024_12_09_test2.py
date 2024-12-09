def gugudan(dan):
    for i in range(1, 10):
        print("%d X %d = %2d" %(dan, i, dan * i))
    print()

while True:
    dan = int(input("단을 입력하세요 : "))
    if dan == 0:
        print("프로그램 종료")
        break
    gugudan(dan)
    