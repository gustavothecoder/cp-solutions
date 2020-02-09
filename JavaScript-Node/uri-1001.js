// URI - 1001

const readline = require('readline')

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const numberA = input

    rl.on('line', input2 => {
        const numberB = input2

        const result = parseInt(numberA) + parseInt(numberB)
        console.log('X = ' + result)

        rl.close()
    })
})