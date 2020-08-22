// URI - 1035: https://www.urionlinejudge.com.br/judge/pt/problems/view/1035

const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const values = lines.shift().split(' ');

if (values[1] > values[2] 
    && values[3] > values[0] 
    && (values[2] + values[3]) > (values[0] + values[1]) 
    && values[2] >= 0 
    && values[3] >= 0 
    && values[0] % 2 == 0)
        console.log('Valores aceitos');
else
    console.log('Valores nao aceitos');