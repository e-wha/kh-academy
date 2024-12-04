aa = []
bb = []
value = 0

for i in range(100):
    aa.append(value)
    value += 2
    
print(aa, end=" ")
print("\n")
aa = []
value = 0
for i in range(200):
    aa.append(value)
    value += 3

print(aa, end=" ")
print("\n")
aa.reverse()
bb = aa
print(bb, end=" ")