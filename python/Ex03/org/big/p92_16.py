str = input("글자 입력: ")

if ('0' <= str and str <= '1'):
    print("2진수 또는 8진수 또는 10진수 또는 16진수입니다.")
elif ('2' <= str and str <= '7'):
    print("8진수 또는 10진수 또는 16진수입니다.")
elif ('8' <= str and str <= '9'):
    print("10진수 또는 16진수입니다.")
elif ('10' <= str and str <= 'F'):
    print("16진수입니다.")
else:
    print("숫자가 아닙니다.")