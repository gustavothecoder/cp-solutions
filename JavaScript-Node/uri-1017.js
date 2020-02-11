// URI - 1017: https://www.urionlinejudge.com.br/judge/pt/problems/view/1017

const readline = require('readline')
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const timeOfTravel = parseInt(input)

    rl.on('line', input => {
        const averageSpeed = parseInt(input)

        console.log(((averageSpeed / 12) * timeOfTravel).toFixed(3))

        rl.close()
    })
})