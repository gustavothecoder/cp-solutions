// URI - 1037: https://www.urionlinejudge.com.br/judge/pt/problems/view/1037

const input = require('fs').readFileSync('input.txt', 'utf-8');
const lines = input.split('\n');

const result = inWichInterval(parseFloat(lines));
console.log(result);

function inWichInterval(value) {  
  if (value >= 0 && value <= 25)
    return 'Intervalo [0,25]';
  else if (value > 25 && value <= 50)
    return 'Intervalo (25,50]';
  else if (value > 50 && value <= 75)
    return 'Intervalo (50,75]';
  else if (value > 75 && value <= 100)
    return 'Intervalo (75,100]'
  else
    return 'Fora de intervalo';
}