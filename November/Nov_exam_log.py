                #1
n=int(input("Enter the number of lines : "))
for i in range(1,n+1):
    for j in range(1,i+1):
        print(" " , end=" ")
        print(j, end=" ")
    print()

            #2
s=input("Enter a string: ")
is_palindrome = True
for i in range(len(s)//2):
    if s[i] != s[len(s)-1-i]:
        is_palindrome = False
        break
if is_palindrome:
    print("The string is a palindrome.")
else:
    print("The string is not a palindrome.")

            #3
x=input("Enter a string: ")
x.lower()
d={}
for i in x:
    if i in d:
        d[i]+=1
    else:
        d[i]==1
print(d)