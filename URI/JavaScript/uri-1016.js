// URI - 1016: https://www.urionlinejudge.com.br/judge/pt/problems/view/1016

const readline = require('readline')
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const result = parseInt(input) * 2

    console.log(result + ' minutos')

    rl.close()
})