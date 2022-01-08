// URI 1038: https://www.urionlinejudge.com.br/judge/en/problems/view/1038

#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  float prices[6] = {0.00, 4.00, 4.50, 5.00, 2.00, 1.50};
  int productCode, quantity;
  cin >> productCode >> quantity;
  cout.precision(2);
  cout << "Total: R$ " << fixed << quantity*prices[productCode] << endl;

  return 0;
}
