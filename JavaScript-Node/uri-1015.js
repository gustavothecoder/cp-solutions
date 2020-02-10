// URI - 1015: https://www.urionlinejudge.com.br/judge/pt/problems/view/1015

const readline = require('readline')
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    let values = input.split(' ')
    const x1 = values[0]
    const y1 = values[1]

    rl.on('line', input => {
        values = input.split(' ')
        const x2 = values[0]
        const y2 = values[1]

        console.log((Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2))).toFixed(4))

        rl.close()
    })
})