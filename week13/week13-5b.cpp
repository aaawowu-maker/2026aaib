// week13-5b.cpp SOIT107_ADVANCE_013_
#include <iostream>
using namespace std;

int max(int a, int b, int c, int d)
{
    if (b>a) a = b;
    if (c>a) a = c;
    if (d>a) a = d;
    return a;
}
int min(int a, int b, int c, int d)
{
    if (b<a) a = b;
    if (c<a) a = c;
    if (d<a) a = d;
    return a;
}

int main(){
  int a,b,c,d;cin>>a>>b>>c>>d;
  cout<<(max(a,b,c,d)-min(a,b,c,d));
  return 0;
}
