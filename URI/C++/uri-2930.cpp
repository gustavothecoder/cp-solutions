// URI 2930: https://www.urionlinejudge.com.br/judge/en/problems/view/2930

#include<iostream>

using namespace std;

int main() {
  int e, d;
  cin >> e >> d;
  if (e > d) {
    cout << "Eu odeio a professora!" << endl;
  }
  else {
    if (d - e >= 3) {
      cout << "Muito bem! Apresenta antes do Natal!" << endl;
    }
    else {
      cout << "Parece o trabalho do meu filho!" << endl;
      if (d + 2 < 25)
        cout << "TCC Apresentado!" << endl;
      else
        cout << "Fail! Entao eh nataaaaal!" << endl;
    }
  }

  return 0;
}
