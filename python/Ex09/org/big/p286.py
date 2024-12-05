myList = [1, 2, 3, 4, 5]

def add10(num):
    return num + 10

for i in range(len(myList)):
    myList[i] = add10(myList[i])
print(myList)

add10 = lambda num : num + 10
myList = list(map(add10, myList))
print(myList)