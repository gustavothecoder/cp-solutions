// URI - 1018: https://www.urionlinejudge.com.br/judge/pt/problems/view/1018

const readline = require('readline')
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

const neededBanknotes = money => {
    const banknotes = [ 100, 50, 20, 10, 5, 2, 1 ]
    let result

    console.log(money)
    for (let index = 0; index < banknotes.length; index++) {
        result = parseInt(money / banknotes[index])
        console.log(result + ' nota(s) de R$ ' + banknotes[index] + ',00')
        money -= result * banknotes[index]
    }
}

rl.on('line', input => {
    const money = parseInt(input)

    neededBanknotes(money)

    rl.close()
})