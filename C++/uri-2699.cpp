// URI 2699: https://www.urionlinejudge.com.br/judge/pt/problems/view/2699

#include<iostream>
#include<math.h>

using namespace std;

const int MAX_DIGITS = 1000;

void normalize(string &input, int size, char (&know)[MAX_DIGITS]);
string find(string &input, int &multiplier, char (&know)[MAX_DIGITS]);
int mod(string input, int multiplier);
bool canIncrement(string &input, int &multipler);
bool valid(string &input, char (&know)[MAX_DIGITS]);
void increment(string &input, int &multiplier, char (&know)[MAX_DIGITS]);

int main() {
  string input;
  char know[MAX_DIGITS];
  int multiplier;
  cin >> input >> multiplier;
  fill_n(know, input.size(), '?');
  normalize(input, input.size(), know);
  cout << find(input, multiplier, know) << endl;

  return 0;
}

void normalize(string &input, int size, char (&know)[MAX_DIGITS]) {
  know[0] = '1';
  for (int i = 0; i < size; i++) {
    if (input[i] == '?') input[i] = i == 0 ? '1' : '0';
    else know[i] = input[i];
  }
}

string find(string &input, int &multiplier, char (&know)[MAX_DIGITS]) {
  int inicial = input.size();
  string previous;
  do {
    if (mod(input, multiplier) == 0 && valid(input, know)) return input;
    previous = input;
    increment(input, multiplier, know);
    if (input == previous) break;
  } while(input.size() == inicial);
  return "*";
}

// Implement this (a+b)%m = ((a%m)+(b%m))%m
// use the udebugtool to test this input: ???125??15?5????2? 253
int mod(string input, int multiplier) {
  if (input.size() > 10) {
    int mid = input.size() / 2;
    return (mod(input.substr(0, mid), multiplier) + mod(input.substr(mid, mid), multiplier)) % multiplier;
  } else {
    int remainder = 0;
    for (int i = 0; i < input.size(); i++) remainder = (10 * remainder + input[i] - '0') % multiplier;
    return remainder;
  }
}

// int mod(string &input, int &multiplier) {
//   int remainder = 0;
//   for (int i = 0; i < input.size(); i++) remainder = (10 * remainder + input[i] - '0') % multiplier;
//   return remainder;
// }

bool valid(string &input, char (&know)[MAX_DIGITS]) {
  for (int i = 0; i < input.size(); i++)
    if (know[i] != '?' && input[i] != know[i]) return false;
  return true;
}

// if the last digit is not divisible by the multiplier, skipe them
void increment(string &input, int &multiplier, char (&know)[MAX_DIGITS]) {
  int last = input[input.size() - 1] - '0';
  if (last % multiplier == 0) {
    string::reverse_iterator iterator = input.rbegin();
    string::reverse_iterator end = input.rend();
    int carry = 1;
    int value = 0;
    int index = input.size() - 1;
    while (carry && iterator != end) {
      if (know[index] != *iterator) {
        value = (*iterator - '0') + carry;
        carry = (value / 10);
        *iterator = '0' + (value % 10);
      }
      ++iterator;
      --index;
    }
    if (carry) input.insert(0, "1");
    return;
  } else {
    if (know[input.size() - 1] != '?') return;
    input[input.size() - 1] = (last + 1) + '0';
    if (last == 9) input.insert(0, "1");
  }
}
