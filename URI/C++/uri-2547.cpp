// URI 2547: https://www.urionlinejudge.com.br/judge/en/problems/view/2547

#include<iostream>

using namespace std;

int main() {
  int n, min, max, h, c = 0;
  while(cin >> n >> min >> max) {
    for (int i = 0; i < n; i++) {
      cin >> h;
      if (h >= min && h <= max) c++;
    }
    cout << c << endl;
    c = 0;
  }

  return 0;
}
