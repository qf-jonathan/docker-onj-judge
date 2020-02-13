#include <stdio.h>

int isPrime(int n) {
    for(int i = 2; i * i <= n; i++) {
        if(n % i == 0) return 0;
    }
    return 1;
}

int main(){
    int t, n;
    scanf("%d", &t);
    while(t--) {
        scanf("%d", &n);
        while(!isPrime(++n));
        printf("%d\n", n);
    }
    return 0;
}
