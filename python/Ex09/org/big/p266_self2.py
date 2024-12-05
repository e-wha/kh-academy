def calc(v1, v2, op):
    result = 0
    if op == '+':
        result = v1 + v2
    elif op == '-':
        result = v1 - v2
    elif op == '*':
        result = v1 * v2
    elif op == '/':
        result = v1 / v2
    elif op == '**':
        result = v1 ** v2
    
    return result

res, var1, var2 = [0] * 3
oper = ''

var1 = int(input("첫 번째 수를 입력하세요 : "))
oper = input("계산을 입력하세요(+, -, *, /, **) : ")
var2 = int(input("두 번째 수를 입력하세요 : "))

if (oper == '/' and var2 == 0):
    print("0으로는 나누면 압 됩니다.ㅠㅠ")
else:
    res = calc(var1, var2, oper)
    print("## 계산기 : %d %s %d = %d" %(var1, oper, var2, res))