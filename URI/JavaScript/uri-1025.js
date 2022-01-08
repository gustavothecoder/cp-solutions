// URI - 1025: https://www.urionlinejudge.com.br/judge/pt/problems/view/1025

const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let testCase, numberOfMarbles, numberOfConsultations, caseCounter = 1, resultOfBinarySearch, firstOccurrence;
let marbles = [], consultations = [];

while (numberOfMarbles != 0 && numberOfConsultations != 0) {
    testCase = lines.shift().split(' ');
    if (testCase[0] == 0 && testCase[1] == 0)
        break;
    numberOfMarbles = testCase[0];
    numberOfConsultations = testCase[1];
    CollectMarbles();
    CollectMarblesToLookFor();
    marbles.sort(InAscendingOrder);
    console.log(`CASE# ${caseCounter}:`);
    for (let i = 0; i < numberOfConsultations; i++) {
        resultOfBinarySearch = BinarySearch(0, numberOfMarbles - 1, parseInt(consultations[i]));
        firstOccurrence = SearchFirstOccurrenceOf(consultations[i]);
        ShowResult(consultations[i]);
    }
    caseCounter++;
    ResetArrays();
}

function CollectMarbles() {
    for (let i = 0; i < numberOfMarbles; i++) 
        marbles[i] = lines.shift();
}

function CollectMarblesToLookFor() {
    for (let i = 0; i < numberOfConsultations; i++)
        consultations[i] = lines.shift();
}

function InAscendingOrder(marbleA, marbleB) {
    return marbleA - marbleB;
}

function BinarySearch(start, end, target) {
    if (start > end)
        return -1;
    let middle, found = false;
    for (let i = 0; i < numberOfMarbles; i++) {
        middle = Math.floor((start+end) / 2);
        if (marbles[middle] == target) {
            found = true;
            break;
        }
        else if (marbles[middle] < target) {
            start = middle + 1;    
        }
        else {
            end =  middle - 1;   
        }
    }
    return found ? middle : -1;
}

function SearchFirstOccurrenceOf(target) {
    let i = resultOfBinarySearch;
    while (marbles[i - 1] == target) {
        i--;
    }
    return i;
}

function ShowResult(target) {
    if (firstOccurrence === -1) {
        console.log(target + ' not found');
    } else {
        console.log(`${target} found at ${firstOccurrence + 1}`);
    }
}


function ResetArrays() {
    marbles = [];
    consultations = [];
}