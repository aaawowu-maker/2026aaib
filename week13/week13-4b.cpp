// week13-4b.cpp SOIT107_ADVANCE_008_C_C++
#include <iostream>
using namespace std;

int prime(int n)
{
    for (int i=2; i<n; i++) {
        if (n%i==0) return 0; //failed
    }
    return 1; // success!
}

int main(){
    int n; cin>>n;
    cout<<"["<<prime(n)<<"]";
    return 0;
}
