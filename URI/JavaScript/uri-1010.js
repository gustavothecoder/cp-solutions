// URI - 1010

const readline = require('readline')

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

class Piece {
    constructor(id, amount, unitaryValue) {
        this.id = id,
        this.amount = amount,
        this.unitaryValue = unitaryValue
    }

    totalPrice() {
        return this.amount * this.unitaryValue
    }
}

rl.on('line', input => {
    let partData = input.split(' ')
    const piece1 = new Piece(parseInt(partData[0]), parseInt(partData[1]), parseFloat(partData[2]))

    rl.on('line', input => {
        partData = input.split(' ')
        const piece2 = new Piece(parseInt(partData[0]), parseInt(partData[1]), parseFloat(partData[2]))

        console.log('VALOR A PAGAR: R$ ' + (piece1.totalPrice + piece2.totalPrice).toFixed(2))

        rl.close()
    })
})