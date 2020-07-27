// URI - 1031: https://www.urionlinejudge.com.br/judge/pt/problems/view/1031

const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let numberOfRegions, regions = [], interval = 0;

while (true) {
    numberOfRegions = lines.shift();
    if (numberOfRegions == 0)
        break;
    
    for (let i = 1; i <= numberOfRegions; i++)
        regions.push(i);

    do {
        interval++;
    } while (energyCut(regions.slice(0), 0, interval) != 13);
    
    console.log(interval);
    interval = 0;
    regions = [];
}

function energyCut(regions, cut, interval) {
    while (regions.length > 1) {
        if (cut > regions.length - 1)
            cut -= regions.length;

        if (cut == regions.length)
            cut = 0;

        if (cut <= regions.length - 1) {
            regions.splice(cut, 1);
            cut += interval - 1;
        }
    }
    return regions[0];
}