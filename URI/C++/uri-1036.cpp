// URI 1036: https://www.urionlinejudge.com.br/judge/en/problems/view/1036

#include<iostream>
#include<iomanip>
#include <cmath>

using namespace std;

int main() {
  double a, b, c;
  cin >> a >> b >> c;
  double delta = (b*b) - 4*a*c;
  if (delta < 0 || 2*a == 0) {
    cout << "Impossivel calcular" << endl;
  } else {
    cout.precision(5);
    cout << "R1 = "  << fixed << (-b + (sqrt(delta))) / (2*a) << endl;
    cout << "R2 = "  << fixed << (-b - (sqrt(delta))) / (2*a) << endl;
  }

  return 0;
}
