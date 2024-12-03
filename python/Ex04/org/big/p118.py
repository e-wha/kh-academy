money, c500, c100, c50, c10 = [0] * 5

c500 = int(input("500원짜리 개수 ==> "))
c100 = int(input("100원짜리 개수 ==> "))
c50 = int(input("50원짜리 개수 ==> "))
c10 = int(input("10원짜리 개수 ==> "))

money = c500 * 500 + c100 * 100 + c50 * 50 + c10 * 10
print("## 동전의 합계 ==> %d원" %money)