// URI - 1042: https://www.urionlinejudge.com.br/judge/pt/problems/view/1042

const input = require('fs').readFileSync('input.txt', 'utf-8');
const values = input.split(' ');
const convertedValues = values.map(value => parseInt(value));
simpleSort(convertedValues);
convertedValues.forEach(value => console.log(value));
console.log();
values.forEach(value => console.log(parseInt(value)));

function simpleSort(values) {
  values.sort((a, b) => a - b);
} 