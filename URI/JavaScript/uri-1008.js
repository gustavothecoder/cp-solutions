// URI - 1008

const readline = require('readline')

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

rl.on('line', input => {
    const employeeNumber = parseInt(input)

    rl.on('line', input => {
        const workedHours = parseInt(input)

        rl.on('line', input => {
            const hourlyValue = parseFloat(input)

            console.log('NUMBER = ' + employeeNumber)
            console.log('SALARY = U$ ' + (workedHours * hourlyValue).toFixed(2))

            rl.close()
        })
    })
})