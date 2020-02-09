// URI - 1012: https://www.urionlinejudge.com.br/judge/pt/problems/view/1012

const readline = require('readline')
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

const showAreas = function (values) {
    const valuesArray = values.split(' ')
    const aValue = parseFloat(valuesArray[0])
    const bValue = parseFloat(valuesArray[1])
    const cValue = parseFloat(valuesArray[2])

    console.log('TRIANGULO: ' + (aValue * cValue / 2).toFixed(3))
    console.log('CIRCULO: ' + (3.14159 * Math.pow(cValue, 2)).toFixed(3))
    console.log('TRAPEZIO: ' + ((aValue + bValue) * cValue / 2).toFixed(3))
    console.log('QUADRADO: ' + (Math.pow(bValue, 2)).toFixed(3))
    console.log('RETANGULO: ' + (aValue * bValue).toFixed(3))
}

rl.on('line', input => {
    showAreas(input)

    rl.close()
})