// URI - 1005

const readline = require('readline')

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const noteA = parseFloat(input)

    rl.on('line', input => {
        const noteB = parseFloat(input)
        const averageGrades = (noteA * 3.5 + noteB * 7.5) / 11

        console.log('MEDIA = ' + averageGrades.toFixed(5))

        rl.close()
    })
})