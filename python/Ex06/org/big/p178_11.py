for i in range(3, 101):
    sosuYN = True
    for j in range(2, i):
        if (i % j == 0):
            sosuYN = False
    if sosuYN:
        print(i, end=" ")
        