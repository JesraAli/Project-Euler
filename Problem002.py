num1 = 1
num2 = 2
num3 = 0
sum = 2
while num3<4000000:
    num3=num1+num2
    num1=num2
    num2=num3
    if num3 % 2==0:
        sum= sum + num2
print (sum)