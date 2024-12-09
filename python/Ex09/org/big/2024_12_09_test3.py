def coffe_machine(button):
    if button == '1':
        print("#3. 보통커피를 탄다.")
    elif button == '2':
        print("#3. 설탕커피를 탄다.")
    else:
        print("#3. 블랙커피를 탄다.")
            
while True:
    button = input("어떤 커피 드릴까요?(1:보통, 2:설탕, 3:블랙) ")
    if (button != '1' and button != '2' and button != '3'):
        if button == 'q':
            print("프로그램 종료")
            break
        print("보기에 표시된 숫자를 입력해주세요. ^^")
        print()
        continue
    else:
        print("#1. 뜨거운 물을 준비한다.")
        print("#2. 종이컵을 준비한다.")
        coffe_machine(button)
        print("#4. 물을 붓는다.")
        print("#5. 스푼으로 젓는다.")
        print("손님~  커피 여기 있습니다.")
        print()