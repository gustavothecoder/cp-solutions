// URI 1000: https://www.urionlinejudge.com.br/judge/en/problems/view/1000

#include <iostream>

double square(double x) {
  return x*x;
}

void print_square(double x) {
  std::cout << "The square of " << x << " is " << square(x) << '\n';
}

int main() {
  print_square(1.234);
  print_square(5.555);
}
