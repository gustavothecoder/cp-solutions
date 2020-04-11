// URI - 1030: https://www.urionlinejudge.com.br/judge/pt/problems/view/1030

const input = require('fs').readFileSync('input.txt', 'utf8');
const lines = input.split('\n');

const numberOfTests = lines.shift();
let testCase, people = [], gonnaDie;

for (let i = 0; i< numberOfTests; i++) {
    testCase = lines.shift().split(' ');

    for (let j = 1; j <= testCase[0]; j++)
        people.push(j);

    gonnaDie = testCase[1] - 1;
    toEliminate(people, testCase[1], gonnaDie);
    console.log(`Case ${i + 1}: ${people.toString()}`);
    people = [];
}

function toEliminate(people, deathJump, gonnaDie) {
    if (people.length > 1) {
        if (gonnaDie > people.length - 1)
            gonnaDie -= people.length;
        if (gonnaDie == people.length)
            gonnaDie = 0;
        if (gonnaDie <= people.length) {
            people.splice(gonnaDie, 1);
            gonnaDie += deathJump - 1;
        }
        return toEliminate(people, deathJump, gonnaDie);
    } else {
        return;
    }
}