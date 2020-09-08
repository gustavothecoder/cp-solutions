// URI - 1039: https://www.urionlinejudge.com.br/judge/pt/problems/view/1039

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const lines = input.split('\n');

const numberOfLines = lines.length;
let data, result;

for (let i = 0; i < numberOfLines; i++) {
  data = getHunterAndFlowerData(lines.shift().split(' '));
  result = catchFireFlower(data.hunter, data.flower);
  console.log(result);
}

function getHunterAndFlowerData(line) {
  const hunter = {
    radius: parseInt(line[0]),
    coordinateX: parseInt(line[1]),
    coordinateY: parseInt(line[2])
  };
  const flower = {
    radius: parseInt(line[3]),
    coordinateX: parseInt(line[4]),
    coordinateY: parseInt(line[5])
  };
  return { hunter, flower };
}

function catchFireFlower(hunter, flower) {
  if (hunterRadiusIsGreaterThanEuclideanDistancePlusFlowerRadius(hunter, flower))
    return 'RICO';
  else
    return 'MORTO';
}

function hunterRadiusIsGreaterThanEuclideanDistancePlusFlowerRadius(hunter, flower) {
  return hunter.radius >= 
    (calculateEuclideanDistance(hunter.coordinateX, hunter.coordinateY, flower.coordinateX, flower.coordinateY) + flower.radius);
}

function calculateEuclideanDistance(x1, y1, x2, y2) {
  return Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
}