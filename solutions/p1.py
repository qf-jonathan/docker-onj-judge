t = int(raw_input())

def isPrime(n):
    i = 2
    while i * i <= n:
        if n % i == 0:
            return False
        i += 1
    return True

for _ in xrange(0, t):
    n = int(raw_input()) + 1
    while not isPrime(n):
        n += 1
    print n
