// URI - 1052: https://www.urionlinejudge.com.br/judge/pt/problems/view/1052

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const monthInNumber = parseInt(input);

const month = ['None', 'January', 'February', 'March', 'April', 'May', 
  'June', 'July', 'August', 'September', 'October', 'November', 'December']

console.log(getMonth(monthInNumber));

function getMonth(monthInNumber) {
  return month[monthInNumber];
}
