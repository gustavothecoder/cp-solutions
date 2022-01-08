// URI 2554: https://www.urionlinejudge.com.br/judge/en/problems/view/2554

#include <iostream>

using namespace std;

const int MAX = 50;

int main() {
  int nd, np, p, c = 0;
  string d, r = "";
  while(cin >> np >> nd) {
    for (int i = 0; i < nd; i++) {
      cin >> d;
      for (int j = 0; j < np; j++) {
        cin >> p;
        if (p == 1) c++;
      }
      if (r == "" && c == np) r = d;
      c = 0;
    }
    r != "" ? cout << r : cout << "Pizza antes de FdI";
    cout << endl;
    r = "";
  }

  return 0;
}
