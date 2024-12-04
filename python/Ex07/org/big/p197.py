myList = [30, 10, 20]
print("현재 리스트 : %s" %myList)

myList.append(40)
print("현재 리스트 : %s" %myList)

myList.pop()
print("현재 리스트 : %s" %myList)

myList.sort()
print("현재 리스트 : %s" %myList)

myList.reverse()
print("현재 리스트 : %s" %myList)

print("지정한 인덱스 위치 : %d" %myList.index(20))

myList.insert(2, 222)
print("현재 리스트 : %s" %myList)

myList.remove(222)
print("현재 리스트 : %s" %myList)

myList.extend([77, 88])
print("현재 리스트 : %s" %myList)