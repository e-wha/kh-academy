# a = 200
#
# if a < 100:
#     print("100보다 작군요")
#     print("if문 블록")
# else:
#     print("100보다 크군요")
#     print("else문 블록")
# print("프로그램 종료")

a = int(input("정수를 입력하세요 : "))

if a % 2 == 0:
    print("짝수")
else:
    print("홀수")