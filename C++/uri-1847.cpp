// URI 1847: https://www.urionlinejudge.com.br/judge/en/problems/view/1847

#include <iostream>

using namespace std;

int main() {
  int a, b, c;
  cin >> a >> b >> c;
  if (b < a && c >= b)
    cout << ":)" << endl;
  else if (b > a && c <= b )
    cout << ":(" << endl;
  else if ((c > b && b > a) && (c - b) < (b - a))
    cout << ":(" << endl;
  else if ((c > b && b > a) && (c - b) >= (b - a))
    cout << ":)" << endl;
  else if ((c < b && b < a) && (b - c) < (a - b))
    cout << ":)" << endl;
  else if ((c < b && b < a) && (b - c) >= (a - b))
    cout << ":(" << endl;
  else if (a == b && c > b)
    cout << ":)" << endl;
  else
    cout << ":(" << endl;

  return 0;
}
