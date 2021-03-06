'''input
abc
ABC
'''
alpha = "abcdefghijklmnopqrstuvwxyz"
alpha += alpha.upper()
h1 = {i:0 for i in alpha}
h2 = {i:0 for i in alpha}

for i in input(''): h1[i] += 1
for i in input(''): h2[i] += 1
y = w = 0
for i in alpha:
	y += min(h1[i],h2[i])
	h1[i], h2[i] = max(0,h1[i]-h2[i]), max(0,h2[i]-h1[i])
for i in alpha:
	j = i.upper() if i.islower() else i.lower()
	w += min(h1[i],h2[j])
	h1[i], h2[j] = max(0,h1[i]-h2[j]), max(0,h2[j]-h1[i])
print("{} {}".format(y, w))