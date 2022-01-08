// URI - 1026: https://www.urionlinejudge.com.br/judge/pt/problems/view/1026

const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let testCase, unsignedNumbers = new Uint32Array(3);

while (testCase = lines.shift()) {
    testCase = testCase.split(' ');
    unsignedNumbers[0] = testCase[0];
    unsignedNumbers[1] = testCase[1];
    unsignedNumbers[2] = unsignedNumbers[0] ^ unsignedNumbers[1];
    console.log(unsignedNumbers[2]);
}