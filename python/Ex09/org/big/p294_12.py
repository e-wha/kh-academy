def base2(num):
    if num < 2:
        print("%s" %numberStr[num], end=" ")
    else:
        print("%s" %numberStr[num % 2], end=" ")
        base2(num // 2)
        
        
def base8(num):
    if num < 8:
        print("%s" %numberStr[num], end=" ")
    else:
        print("%s" %numberStr[num % 8], end=" ")
        base8(num // 8)

def base16(num):
    if num < 16:
        print("%s" %numberStr[num], end=" ")
    else:
        print("%s" %numberStr[num % 16], end=" ")
        base8(num // 16)

numberStr = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F']

number = int(input("10진수 입력 --> "))
print("\n 2진수 : ")
base2(number)
print("\n 8진수 : ")
base8(number)
print("\n 16진수 : ")
base16(number)
