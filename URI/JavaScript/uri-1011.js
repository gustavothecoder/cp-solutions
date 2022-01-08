// URI - 1011: https://www.urionlinejudge.com.br/judge/pt/problems/view/1011

const readline = require('readline')
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const radius = parseInt(input)

    console.log('VOLUME = ' + ((4.0/3.0) * 3.14159 * Math.pow(radius, 3)).toFixed(3))

    rl.close()
})