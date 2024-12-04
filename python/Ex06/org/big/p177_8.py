hap = 0
for n in range(1234, 4568):
    if n % 444 == 0:
        hap += n
print(hap)

hap = 0
n = 1234
while(True):
    if n % 444 == 0:
        hap += n
    n += 1
    if (n == 4567):
        break
print(hap)