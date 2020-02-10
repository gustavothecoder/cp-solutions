// URI - 1014: https://www.urionlinejudge.com.br/judge/pt/problems/view/1014

const readline = require('readline')
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const travelledDistance = parseInt(input)

    rl.on('line', input => {
        const spentFuel = parseFloat(input)

        console.log((travelledDistance / spentFuel).toFixed(3) + ' km/l')

        rl.close()
    })
})