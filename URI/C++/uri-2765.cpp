// URI 2765: https://www.urionlinejudge.com.br/judge/en/problems/view/2765

#include<iostream>

using namespace std;

int main() {
  string s;
  getline(cin, s);
  int c = s.find(',');
  cout << s.substr(0, c) << endl;
  cout << s.substr(c + 1, s.size() - 1) << endl;

  return 0;
}
