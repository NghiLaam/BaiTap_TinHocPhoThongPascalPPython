f = open("HTG.txt", "r")
a, b, c = map(int, f.read().split())
f.close()
if (a + b > c and a + c > b and b + c > a):
    p = (a + b + c) / 2
    s = round((p * (p - a) * (p - b) * (p - c)) ** 0.5 , 2)
    print('Dien tich = ', s)
else:
    print('3 canh khong tao thanh tam giac')
