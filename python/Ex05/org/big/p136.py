import random

numbers = []
for num in range(10):
    numbers.append(random.randrange(0, 10))
    
print("num 최종값 : ", num)
print("생성된 리스트 : ", numbers)
for num in range(10):
    if num not in numbers:
        print("숫자 %d는 리스트에 없네요." %num)