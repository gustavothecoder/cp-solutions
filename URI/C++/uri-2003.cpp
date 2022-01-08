// URI 2003: https://www.urionlinejudge.com.br/judge/en/problems/view/2003

#include<iostream>

using namespace std;

const int DEPARTURE_TIME = 480;

int main() {
  string t;
  int h, m, a;
  while (cin >> t) {
    sscanf(t.c_str(), "%d:%d", &h, &m);
    a = (h * 60 + m + 60) - DEPARTURE_TIME;
    cout << "Atraso maximo: " << (a >= 0 ? a : 0) << endl;
  } 

  return 0;
}
