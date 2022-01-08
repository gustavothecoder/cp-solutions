// URI - 1036: https://www.urionlinejudge.com.br/judge/pt/problems/view/1036

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const lines = input.split('\n');

const result = bhaskaraCalculator(lines[0].split(' '));
if (Array.isArray(result)) {
  result.forEach((root, index) => {
    console.log('R' + (index + 1) + ' = ' + root);
  });
} else {
  console.log(result);
}

function bhaskaraCalculator(values) {
  const valueA = parseFloat(values[0]);
  const valueB = parseFloat(values[1]);
  const valueC = parseFloat(values[2]);
  const delta = Math.pow(valueB, 2) - (4 * valueA * valueC);
  const divider = 2 * valueA;
  if (delta < 0 || divider === 0)
    return 'Impossivel calcular';
  else {
    const firstRoot = (-valueB + Math.sqrt(delta)) / divider;
    const secondRoot = (-valueB - Math.sqrt(delta)) / divider;
    return new Array(firstRoot.toFixed(5), secondRoot.toFixed(5));
  }
}