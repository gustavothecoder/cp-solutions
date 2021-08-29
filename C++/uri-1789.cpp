// URI 1789: https://www.urionlinejudge.com.br/judge/en/problems/view/1789

#include <bits/stdc++.h>

using namespace std;

int main()
{
  int l, v, fasterSlug;
  while (cin >> l) {
    fasterSlug = 1;
    for (int i = 0; i < l; i++) {
      cin >> v;
      if (v > fasterSlug) fasterSlug = v;
    }
    if (fasterSlug < 10)
      cout << "1\n";
    else if (fasterSlug < 20)
      cout << "2\n";
    else
      cout << "3\n";
  }
}
