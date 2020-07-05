// URI - 1028: https://www.urionlinejudge.com.br/judge/pt/problems/view/1028

const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const testCases = lines.shift();
let figurines;

for (let i = 0; i < testCases; i++) {
    figurines = lines.shift().split(' ');
    console.log(GCD(figurines[0], figurines[1]));
}

function GCD(number1, number2) {
    if (number2 == 0) 
        return number1;
    else 
        return GCD(number2, number1 % number2); 
}