'''input
5
'''
a = int(input())
for i in range(1, a+1):
    print(" "*(a-i), end="")
    print("*"*(i))
