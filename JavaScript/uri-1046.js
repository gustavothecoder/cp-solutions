// URI - 1046: https://www.urionlinejudge.com.br/judge/pt/problems/view/1046

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const values = input.split(' ').map(value => parseInt(value));

console.log(calculateGameDuration(values[0], values[1]));

function calculateGameDuration(startTime, endTime) {
  if (startTime > endTime) 
    return `O JOGO DUROU ${(endTime + 24) - startTime} HORA(S)`;
  else if (startTime === endTime)
    return 'O JOGO DUROU 24 HORA(S)';
  else 
    return `O JOGO DUROU ${endTime - startTime} HORA(S)`;
}
