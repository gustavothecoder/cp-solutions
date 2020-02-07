// URI - 1006

const readline = require('readline')

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const noteA = parseFloat(input)

    rl.on('line', input => {
        const noteB = parseFloat(input)

        rl.on('line', input => {
            const noteC = parseFloat(input)
            const averageGrade = ((noteA * 2.0 + noteB * 3.0 + noteC * 5.0) / 10.0)

            console.log('MEDIA = ' + averageGrade.toFixed(1))

            rl.close()
        })
    })
})