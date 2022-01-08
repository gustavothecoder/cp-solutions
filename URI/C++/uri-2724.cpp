// URI 2724: https://www.urionlinejudge.com.br/judge/en/problems/view/2724

#include <iostream>
#include <vector>

using namespace std;

void getInputs(int* limit, vector<string>& vector);
void checkSecurity(vector<string>& hazardousCompounds, vector<string>& formulas);
bool isTheBeginningOfANewCompound(int ascIIChar);

int main() {
  int numberOfTests = 0, numberOfHazardousCompounds = 0, numberOfFormulas = 0;
  vector<string> hazardousCompounds, formulas;
  cin >> numberOfTests;
  for (int i = 0; i < numberOfTests; i++) {
    cin >> numberOfHazardousCompounds;
    getInputs(&numberOfHazardousCompounds, hazardousCompounds);
    cin >> numberOfFormulas;
    getInputs(&numberOfFormulas, formulas);
    checkSecurity(hazardousCompounds, formulas);
    if (i != numberOfTests - 1) cout << endl;
    hazardousCompounds.clear();
    formulas.clear();
  }

  return 0;
}

void getInputs(int* limit, vector<string>& vector) {
  string compound;
  for (int i = 0; i < *limit; i++) {
    cin >> compound;
    vector.push_back(compound);
  }
}

void checkSecurity(vector<string>& hazardousCompounds, vector<string>& formulas) {
  int compoundIndex, characterAfterCompound;
  bool hazardousCompoundFound;
  for (string formula : formulas) {
    hazardousCompoundFound = false;
    for (string compound : hazardousCompounds) {
      compoundIndex = formula.find(compound);
      characterAfterCompound = int(formula[compoundIndex + compound.length()]);
      if (compoundIndex != -1 && isTheBeginningOfANewCompound(characterAfterCompound)) {
        hazardousCompoundFound = true;
        break;
      }
    }
    hazardousCompoundFound ? cout << "Abortar" : cout << "Prossiga";
    cout << endl;
  }
}

bool isTheBeginningOfANewCompound(int ascIIChar) {
  return ascIIChar == 0 || ascIIChar == 32 || (ascIIChar > 64 && ascIIChar < 91);
}
