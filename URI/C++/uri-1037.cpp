// URI 1037: https://www.urionlinejudge.com.br/judge/en/problems/view/1037
  
#include <iostream>

using namespace std;

int main() {
  float input;
  cin >> input;
  if (input < 0 || input > 100)
    cout << "Fora de intervalo" << endl;
  else if (input <= 25)
    cout << "Intervalo [0,25]" << endl;
  else if (input <= 50)
    cout << "Intervalo (25,50]" << endl;
  else if (input <= 75)
    cout << "Intervalo (50,75]" << endl;
  else if (input <= 100)
    cout << "Intervalo (75,100]" << endl;

  return 0;
}
