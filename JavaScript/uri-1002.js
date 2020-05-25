// URI - 1002

const readline = require('readline')

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const radius = parseFloat(input)

    console.log('A=' + (3.14159 * Math.pow(radius, 2)).toFixed(4))

    rl.close()
})