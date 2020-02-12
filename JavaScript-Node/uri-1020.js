// URI - 1020: https://www.urionlinejudge.com.br/judge/pt/problems/view/1020

const readline = require('readline')
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

const realAge = ageInDays => {
    const years = parseInt(ageInDays / 365)
    ageInDays -= years * 365

    const months = parseInt(ageInDays / 30)
    ageInDays -= months * 30

    console.log(years + ' ano(s)')
    console.log(months + ' mes(es)')
    console.log(ageInDays + ' dia(s)')
}

rl.on('line', input => {
    const ageInDays = parseInt(input)

    realAge(ageInDays)

    rl.close()
})