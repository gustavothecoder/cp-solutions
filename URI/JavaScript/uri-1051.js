// URI - 1051: https://www.urionlinejudge.com.br/judge/pt/problems/view/1051

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const salary = parseInt(input);

console.log(calculateIncomeTax(salary));

function calculateIncomeTax(salary) {
  let rest = 0;
  if (salary <= 2000.00)
    return 'Isento';
  else if (salary <= 3000.00) {
    rest = salary - 2000.00;
    return 'R$ ' + (rest * 0.08).toFixed(2);
  } else if (salary <= 4500.00) {
    rest = salary - 3000.00;
    return 'R$ ' + ((rest * 0.18) + 80.00).toFixed(2);
  } else {
    rest = salary - 4500.00;
    return 'R$ ' + ((rest * 0.28) + 350.00  ).toFixed(2);
  }
}
