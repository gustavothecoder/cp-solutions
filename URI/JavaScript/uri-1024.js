// URI - 1024: https://www.urionlinejudge.com.br/judge/pt/problems/view/1024

const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const amountOfTextsToEncrypt = lines.shift()

for (let i = 0; i < amountOfTextsToEncrypt; i++) {
    const textToEncrypt = lines.shift()

    let ASCIIvalues1 = []
    let j
    for (j = 0; j < textToEncrypt.length; j++) {
        ASCIIvalues1.push(textToEncrypt.charCodeAt(j))
    }

    let ASCIIvalues2 = []
    for (j = 0; j < ASCIIvalues1.length; j++) {
        if ((ASCIIvalues1[j] > 64 && ASCIIvalues1[j] < 91) || (ASCIIvalues1[j] > 96 && ASCIIvalues1[j] < 123)) {
            ASCIIvalues2.push(ASCIIvalues1[j] + 3)
        } else {
            ASCIIvalues2.push(ASCIIvalues1[j])
        }
    }

    ASCIIvalues1 = []
    for (j = ASCIIvalues2.length; j > 0; j--) {
        ASCIIvalues1.push(ASCIIvalues2[j - 1])
    }

    ASCIIvalues2 = []
    if (ASCIIvalues1[0] == 13) {
        ASCIIvalues1.splice(ASCIIvalues1.indexOf(13), 1)
    }
    const halfTheTextSize = parseInt(ASCIIvalues1.length / 2)
    for (j = 0; j < halfTheTextSize; j++) {
        ASCIIvalues2.push(String.fromCharCode(ASCIIvalues1[j]))
    }
    for (j = halfTheTextSize; j < ASCIIvalues1.length; j++) {
        ASCIIvalues2.push(String.fromCharCode(ASCIIvalues1[j] - 1))
    }

    console.log(ASCIIvalues2.join(''))
}