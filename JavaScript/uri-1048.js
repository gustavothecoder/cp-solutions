// URI - 1048: https://www.urionlinejudge.com.br/judge/pt/problems/view/1048

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const salary = parseFloat(input);

const newSalary = calculateNewSalary(salary);
console.log('Novo salario: ' + newSalary.newSalary);
console.log('Reajuste ganho: ' + newSalary.readjustment);
console.log('Em percentual: ' + newSalary.percentage);

function calculateNewSalary(currentSalary) {
  const percentage = getPercentageForSalary(currentSalary);
  const newSalary = (currentSalary + (currentSalary * (percentage / 100))).toFixed(2);
  const readjustment = (newSalary - currentSalary).toFixed(2);
  return { newSalary, readjustment, percentage: percentage.toString() + ' %' };
}

function getPercentageForSalary(salary) {
  if (salary > 0 && salary <= 400.00)
    return 15;
  else if (salary <= 800.00)
    return 12;
  else if (salary <= 1200.00)
    return 10;
  else if (salary <= 2000.00)
    return 7;
  else
    return 4;
}
