#include <bits/stdc++.h>

using namespace std;

bool isPrime(int n) {
    for(int i = 2; i * i <= n; i++) {
        if(n % i == 0) return false;
    }
    return true;
}

int main(){
    int t, n;
    cin >> t;
    while(t--) {
        cin >> n;
        while(!isPrime(++n));
        cout << n << endl;
    }
    return 0;
}
