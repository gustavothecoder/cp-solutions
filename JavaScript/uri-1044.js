// URI - 1044: https://www.urionlinejudge.com.br/judge/pt/problems/view/1044

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const values = input.split(' ');

console.log(checkIfTheyAreMultiple(parseInt(values[0]), parseInt(values[1])));

function checkIfTheyAreMultiple(a, b) {
  const biggestNumber = a > b ? a : b;
  const smallerNumber = biggestNumber === a ? b : a;
  return biggestNumber % smallerNumber === 0 ? 'Sao Multiplos' : 'Nao sao Multiplos';
}