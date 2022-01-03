// URI 2774: https://www.urionlinejudge.com.br/judge/en/problems/view/2774

#include<iostream>
#include<iomanip>
#include<string>
#include<sstream>
#include<math.h>

using namespace std;

int main() {
  string time, cases, token;
  int qt = 0;
  double avg = 0.0, summation = 0.0;
  cout.precision(5);
  while (getline(cin, time)) {
    getline(cin, cases);
    stringstream tokenCases(cases);
    while(tokenCases >> token) {
      qt++;
      avg += stod(token);
    }
    avg /= qt;
    tokenCases.clear();
    tokenCases.seekg(0);
    while (tokenCases >> token) 
      summation += pow((stod(token) - avg), 2);
    cout << fixed << sqrt(summation / (qt - 1)) << endl;
    qt = 0;
    avg = 0.0;
    summation = 0.0;
  }

  return 0;
}
