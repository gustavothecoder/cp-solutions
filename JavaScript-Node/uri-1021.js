// URI - 1021: https://www.urionlinejudge.com.br/judge/pt/problems/view/1021

const readline = require('readline')
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

const neededBanknotes = money => {
    const banknotes = [ 100, 50, 20, 10, 5, 2 ]
    let result

    console.log('NOTAS:')
    for (const banknote of banknotes) {
        result = parseInt(money / banknote)
        console.log(result + ' nota(s) de R$ ' + banknote.toFixed(2))
        money = Math.round((money - result * banknote) * 100) / 100
    }

    return money
}

const requiredCoins = money => {
    const coins = [ 1.0, 0.50, 0.25, 0.10, 0.05, 0.01 ]
    let result

    console.log('MOEDAS:')
    for (const coin of coins) {
        result = parseInt(money / coin)
        console.log(result + ' moeda(s) de R$ ' + coin.toFixed(2))
        money = Math.round((money - result * coin) * 100) / 100
    }
}

rl.on('line', input => {
    const money = parseFloat(input)
    const rest = neededBanknotes(money)
    requiredCoins(rest)

    rl.close()
})