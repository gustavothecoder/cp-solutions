// URI-1002: https://www.urionlinejudge.com.br/judge/en/problems/view/1002

#include <iostream>
#include <iomanip>

using namespace std;

const double PI = 3.14159;

int main() {
  double r;
  cin >> r; 
  cout << "A=" << fixed << setprecision(4) << PI*(r*r) << endl;
  return 0;
}
