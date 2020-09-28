// URI - 1043: https://www.urionlinejudge.com.br/judge/pt/problems/view/1043

const input = require('fs').readFileSync('input.txt', 'utf-8');
const values = input.split(' ').map(value => parseFloat(value));

if (checkIfIsTriangle(values))
  console.log('Perimetro = ' + calculateTrianglePerimeter(values).toFixed(1));
else
  console.log('Area = ' + calculateTrapezoidArea(values).toFixed(1));

function checkIfIsTriangle(sides) {
  if (isTriangle(sides))
    return true;
  else
    return false;
}

function isTriangle(sides) {
  return sides[0] + sides[1] > sides[2] 
      && sides[0] + sides[2] > sides[1] 
      && sides[1] + sides[2] > sides[0];
}

function calculateTrapezoidArea(sides) {
  return ((sides[0] + sides[1]) / 2) * sides[2];
}

function calculateTrianglePerimeter(sides) {
  return sides[0] + sides[1] + sides[2];
}