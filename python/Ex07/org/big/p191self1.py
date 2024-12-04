aa = []
for i in range(0, 10):
    aa.append(0)
hap = 0

for i in range(0, 10):
    aa[i] = int(input("%d번째 숫자 : " %(i+1)))
    
i = 0
while i < 10:
    hap += aa[i]
    i += 1
print("합계 : %d" %hap)