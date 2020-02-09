// URI - 1007

const readline = require('readline')

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const aValue = parseInt(input)

    rl.on('line', input => {
        const bValue = parseInt(input)

        rl.on('line', input => {
            const cValue = parseInt(input)

            rl.on('line', input => {
                const dValue = parseInt(input)
                const difference = parseInt((aValue * bValue - cValue * dValue))

                console.log('DIFERENCA = ' + difference)

                rl.close()
            })
        })
    })
})