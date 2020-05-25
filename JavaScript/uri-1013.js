// URI - 1013: https://www.urionlinejudge.com.br/judge/pt/problems/view/1013

const readline = require('readline')
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

const biggerAB = (A, B) => {
    return (A + B + Math.abs(A - B)) / 2
}

rl.on('line', input => {
    const valuesAB = input.split(' ')

    const A = parseInt(valuesAB[0])
    const B = parseInt(valuesAB[1])
    const C = parseInt(valuesAB[2])
    
    const bigger = biggerAB(A, B)

    console.log(bigger > C ? bigger + ' eh o maior' : C + ' eh o maior')

    rl.close()
})