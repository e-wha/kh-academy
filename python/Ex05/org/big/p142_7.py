import random

num1, num2, num3, num4 = [0] * 4
num1 = random.randrange(1, 7)
num2 = random.randrange(1, 7)
num3 = random.randrange(1, 7)
num4 = random.randrange(1, 7)

print("A의 주사위 숫자는 %d %d입니다." %(num1, num2))
print("B의 주사위 숫자는 %d %d입니다." %(num3, num4))
if (num1 + num2 > num3 + num4):
    print("A가 이겼네요.")
elif (num1 + num2 < num3 + num4):
    print("B가 이겼네요.")
else:
    print("둘이 비겼네요.")