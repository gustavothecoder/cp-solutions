// URI - 1041: https://www.urionlinejudge.com.br/judge/pt/problems/view/1041

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const values = input.split(' ');

const x = parseFloat(values[0]);
const y = parseFloat(values[1]);
console.log(getPointPosition(x, y));

function getPointPosition(x, y) {
  if (x > 0.0 && y > 0.0)
    return 'Q1';
  else if (x < 0.0 && y > 0.0)
    return 'Q2';
  else if (x < 0.0 && y < 0.0)
    return 'Q3';
  else if (x > 0.0 && y < 0.0)
    return 'Q4';
  else if (x === 0.0 && y !== 0.0)
    return 'Eixo Y'
  else if (x !== 0.0 && y === 0.0)
    return 'Eixo X'
  else 
    return 'Origem';
}