def genFunc(num):
    for i in range(num):
        yield i
        print('제네레이터 진행 중')

# print(list(genFunc(5)))

for data in genFunc(5):
    print(data)