def addNumber(num):
    if 1 >= num:
        return num
    else:
        return num + addNumber(num - 1)
print(addNumber(100))