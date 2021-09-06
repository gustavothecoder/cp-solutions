// URI 1828: https://www.urionlinejudge.com.br/judge/en/problems/view/1828

#include <iostream>

using namespace std;

int main() {
  int t;
  string sheldon, raj;
  cin >> t;
  for (int i = 1; i <= t; i++) {
    cin >> sheldon >> raj;
    cout << "Caso #" << i;
    if (sheldon == raj) {
      cout << ": De novo!" << endl;
      continue;
    }
    else if (sheldon == "tesoura")
      if (raj == "papel" || raj == "lagarto") {
        cout << ": Bazinga!" << endl;
        continue;
      } else {
        cout << ": Raj trapaceou!" << endl;
        continue;
      }
    else if (sheldon == "papel")
      if (raj == "pedra" || raj == "Spock") {
        cout << ": Bazinga!" << endl;
        continue;
      } else {
        cout << ": Raj trapaceou!" << endl;
        continue;
      }
    else if (sheldon == "pedra")
      if (raj == "lagarto" || raj == "tesoura") {
        cout << ": Bazinga!" << endl;
        continue;
      } else {
        cout << ": Raj trapaceou!" << endl;
        continue;
      }
    else if (sheldon == "lagarto")
      if (raj == "Spock" || raj == "papel") {
        cout << ": Bazinga!" << endl;
        continue;
      } else {
        cout << ": Raj trapaceou!" << endl;
        continue;
      }
    else {
      if (raj == "tesoura" || raj == "pedra") {
        cout << ": Bazinga!" << endl;
        continue;
      } else {
        cout << ": Raj trapaceou!" << endl;
        continue;
      }
    }
  }

  return 0;
}
