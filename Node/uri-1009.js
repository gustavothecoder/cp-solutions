// URI - 1009

const readline = require('readline')

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const sellerName = input

    rl.on('line', input => {
        const fixedSalary = parseFloat(input)

        rl.on('line', input => {
            const totalCashSales = parseFloat(input)

            console.log('TOTAL = R$ ' + (fixedSalary + totalCashSales * 0.15).toFixed(2))

            rl.close()
        })
    })
})