// URI 1040: https://www.urionlinejudge.com.br/judge/en/problems/view/1040

#include<iostream>
#include<iomanip>

using namespace std;

const int FIRST_WEIGHT = 2;
const int SECOND_WEIGHT = 3;
const int THIRD_WEIGHT = 4;
const int FOURTH_WEIGHT = 1;

int main() {
  double note1, note2, note3, note4, average, recoveryNote, finalAverage;
  
  cin >> note1 >> note2 >> note3 >> note4;
  
  average = ((note1*FIRST_WEIGHT) + (note2*SECOND_WEIGHT) + (note3*THIRD_WEIGHT) + (note4*FOURTH_WEIGHT))/10;
  cout.precision(1);
  cout << "Media: " << fixed << average << endl;
  
  if (average >= 7.0) {
    cout << "Aluno aprovado." << endl;
  } else if (average < 5.0) {
    cout << "Aluno reprovado." << endl;
  } else {
    cout << "Aluno em exame." << endl;
    cin >> recoveryNote;
    cout << "Nota do exame: " << fixed << recoveryNote << endl;
    finalAverage = (recoveryNote + average)/2;
    if (finalAverage >= 5.0)
      cout << "Aluno aprovado." << endl;
    else
      cout << "Aluno reprovado." << endl;
    cout << "Media final: " << fixed << finalAverage << endl;
  }

  return 0;
}
