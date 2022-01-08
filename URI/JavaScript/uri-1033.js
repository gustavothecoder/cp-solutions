// URI - 1033: https://www.urionlinejudge.com.br/judge/pt/problems/view/1033

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const lines = input.split('\n');

let testCase, caseCounter = 1, numberToBeTested, baseNumber, result;

while (true) {
    testCase = lines.shift().split(' ');
    if (testCase[0] == 0 && testCase[1] == 0)
        break;
    numberToBeTested = BigInt(testCase[0]);     
    baseNumber = BigInt(testCase[1]);
    result = BigInt(((2n * bigMod(numberToBeTested + 1n)) - 1n + baseNumber) % baseNumber);
    showResult();
    caseCounter++;
}

function bigMod(number) {
    if (number <= 0n)
        return 0;
    let a = 1n, b = 0n, c = 0n, d = 1n, r;
    --number;
    while (number > 0n) {
        if (number % 2n == 1n) {
            r = ((d * b) + (c * a)) % baseNumber;
            b = (d * (b + a) + (c * b)) % baseNumber;
            a = r;
        }
        r = (c * c + d * d) % baseNumber;
        d = (d * (2n * c + d)) % baseNumber;
        c = r;
        number = number / 2n;
    }
    return (a + b) % baseNumber;
}

function showResult() {
    console.log(`Case ${caseCounter}: ${numberToBeTested} ${baseNumber} ${result}`);
}