animalChild = {"꿩":"꺼병이",
               "개":"강아지",
               "소":"송아지",
               "말":"망아지",
               "닭":"병아리",
               "곰":"능소니",
               "범":"개호주",
               "매":"초고리",
               "고등어":"고도리"}

while(True):
    animal = input(str(list(animalChild.keys())) + "중 새끼 이름을 알고 싶은 동물은? ")
    if animal in animalChild:
        print("<%s>의 새끼는 <%s>입니다." %(animal, animalChild.get(animal)))
    elif animal == "끝":
        break
    else:
        print("그런 동물은 없습니다. 확인해 보세요.")