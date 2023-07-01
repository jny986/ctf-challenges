import unicodedata

file = open('enc', 'r')

flag = file.read()

print(flag)

print(chr(ord(flag[-1]) << 8))

# print(''.join([chr((ord(flag[i]) << 8) + ord(flag[i + 1])) for i in range(0, len(flag), 2)]))

chars = []

for i in range(0, len(flag)):
    
    ordCurrent = (ord(flag[1]) << 8)
    ordNext = (ord(flag[1+1]))
    ordTotal = ordCurrent + ordNext
#     # chars.append(chr((ord(flag[i]) << 8) + ord(flag[i + 1])))

# # ''.join([chr((ord(flag[i]) << 8) + ord(flag[i + 1])) for i in range(0, len(flag), 2)])

# print(chars)

file.close()

# 28777
# 112
# 28665

# 25455
# 0.996
# 0.004
# 102