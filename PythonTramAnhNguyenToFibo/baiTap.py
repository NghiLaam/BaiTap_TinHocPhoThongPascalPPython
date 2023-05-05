def nhap_mang():
    daySo = [int(so) for so in input('Nhap day so cach nhau boi khoang trang: ').split()]
    return daySo

def la_nguyen_to(n):
    if n <= 1:
        return 0
    i = 2
    while i * i < n:
        if n % i == 0:
            return 0
        i += 1
    return 1

def la_fibo(n):
    if n < 1:
        return 0
    if n == 1:
        return 1
    a1, a2, a3 = 1, 1, 0
    while a3 < n:
        a3 = a1 + a2
        a1 = a2
        a2 = a3
        if a3 == n:
            return 1
    return 0

daySo = nhap_mang()
n = len(daySo)
tong = 0
for i in range(n):
    if la_nguyen_to(daySo[i]) and la_fibo(daySo[i]):
        tong += daySo[i]
        print(daySo[i], end=' ')
print('tong =', tong)






# 1 1 2 3 5 8 13 21 34 55







# daySo = input('Nhap day so cach nhau boi khoang trang: ').split()
    # for i in range(len(daySo)):
    #     daySo[i] = int(daySo[i])

