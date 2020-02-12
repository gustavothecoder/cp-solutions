// URI - 1019: https://www.urionlinejudge.com.br/judge/pt/problems/view/1019

const readline = require('readline')
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

const convertSeconds = seconds => {
    const hours = parseInt(seconds / 3600)
    seconds -= hours * 3600

    const minutes = parseInt(seconds / 60)
    seconds -= minutes * 60

    console.log(`${hours}:${minutes}:${seconds}`)
}

rl.on('line', input => {
    const seconds = parseInt(input)

    convertSeconds(seconds)

    rl.close()
})