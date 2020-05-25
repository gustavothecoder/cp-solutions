// URI - 1022: https://www.urionlinejudge.com.br/judge/pt/problems/view/1022

const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const calculator = () => {
    const mathematicalExpression = lines.shift().split(' ')
    const numerator1 = parseInt(mathematicalExpression[0])
    const denominator1 = parseInt(mathematicalExpression[2])
    const operator = mathematicalExpression[3]
    const numerator2 = parseInt(mathematicalExpression[4])
    const denominator2 = parseInt(mathematicalExpression[6])

    let GCDresult
    let operationPart1
    let operationPart2

    if (operator == '+') {
        operationPart1 = parseInt(numerator1 * denominator2 + numerator2 * denominator1)
        operationPart2 = parseInt(denominator1 * denominator2)
    } else if (operator == '-') {
        operationPart1 = parseInt(numerator1 * denominator2 - numerator2 * denominator1)
        operationPart2 = parseInt(denominator1 * denominator2)
    } else if (operator == '*') {
        operationPart1 = parseInt(numerator1 * numerator2)
        operationPart2 = parseInt(denominator1 * denominator2)
    } else if (operator == '/') {
        operationPart1 = parseInt(numerator1 * denominator2)
        operationPart2 = parseInt(numerator2 * denominator1)
    } else {
        console.log('Invalid operator!')
    }
    
    GCDresult = parseInt(GCD(operationPart1, operationPart2))
    let simplificationPart1 = parseInt(operationPart1 / GCDresult)
    let simplificationPart2 = parseInt(operationPart2 / GCDresult)

    if (simplificationPart1 > 0 && simplificationPart2 > 0) {
        console.log(`${operationPart1}/${operationPart2} = ${simplificationPart1}/${simplificationPart2}`)
    } else {
        if (simplificationPart2 < 0) {
            simplificationPart1 = -simplificationPart1
            simplificationPart2 = -simplificationPart2
        }
        console.log(`${operationPart1}/${operationPart2} = ${simplificationPart1}/${simplificationPart2}`)
    }
}

const GCD = (part1, part2) => {
    let divider, dividend, rest

    if (part1 == 0) {
        return 1
    }

    if (part2 > part1) {
        dividend = part2
        divider = part1
    } else {
        divider = part2
        dividend = part1
    }

    while (dividend % divider != 0) {
        rest = dividend % divider
        dividend = divider
        divider = rest
    }

    return divider
}

const numberOfCalculations = parseInt(lines.shift())

for (let i = 0; i < numberOfCalculations; i++) {
    calculator()
}