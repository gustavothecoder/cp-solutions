// URI - 1029: https://www.urionlinejudge.com.br/judge/pt/problems/view/1029

const input = require('fs').readFileSync('input.txt', 'utf8');
const lines = input.split('\n');

const numberOfTests = lines.shift();
let testCase, result, counter = 0;

for (let i = 0; i < numberOfTests; i++) {
    testCase = lines.shift();
    result = Fibonacci(testCase);
    console.log(`fib(${testCase}) = ${counter} calls = ${result}`);
    counter = 0;
}

function Fibonacci(number) {
    if (number < 2) 
        return number;
    else {
        counter += 2;
        return Fibonacci(number - 1) + Fibonacci(number - 2);
    }
}