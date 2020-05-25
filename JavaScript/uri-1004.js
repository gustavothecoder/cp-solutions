// URI - 1004

const readline = require('readline')

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const numberA = parseInt(input)

    rl.on('line', input => {
        const numberB = parseInt(input)
        const prod = numberA * numberB

        console.log('PROD = ' + prod)

        rl.close()
    })
})