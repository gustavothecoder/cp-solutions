// URI - 1003

const readline = require('readline')

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const numberA = parseInt(input)

    rl.on('line', input => {
        const numberB = parseInt(input)
        const sum = numberA + numberB
        
        console.log('SOMA = ' + sum)

        rl.close()
    })
})