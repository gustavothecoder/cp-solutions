// URI 2759: https://www.urionlinejudge.com.br/judge/en/problems/view/2759

#include<iostream>

using namespace std;

int main() {
  char a, b, c;
  cin >> a;
  cin >> b;
  cin >> c;
  for (int i = 0; i < 3; i ++) {
    if (i == 0)
      cout << "A = " << a << ", B = " << b  << ", C = " << c << endl;
    else if (i == 1)
      cout << "A = " << b << ", B = " << c  << ", C = " << a << endl;
    else
      cout << "A = " << c << ", B = " << a  << ", C = " << b << endl;
  }

  return 0;
}
