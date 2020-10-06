// URI - 1045: https://www.urionlinejudge.com.br/judge/pt/problems/view/1045

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const sides = input.split(' ').map(side => parseFloat(side));
const triangleTypes = getTriangleTypeOf(sides.sort((a, b) => b - a));
triangleTypes.forEach(type => console.log(type));

function getTriangleTypeOf(sides) {
  const types = new Array();
  if (isTriangle(sides)) {
    if (isRightTriangle(sides))
      types.push('TRIANGULO RETANGULO');
    if (isObtusangleTriangle(sides))
      types.push('TRIANGULO OBTUSANGULO');
    if (isAcutanguloTriangle(sides))
      types.push('TRIANGULO ACUTANGULO');
    if (isEquilateralTriangle(sides))
      types.push('TRIANGULO EQUILATERO');
    else if (isIsoscelesTriangle(sides))
      types.push('TRIANGULO ISOSCELES');
  }
  else 
    types.push('NAO FORMA TRIANGULO');
  return types.slice(0);
}

function isTriangle(sides) {
  return sides[0] < (sides[1] + sides[2]);
}

function isRightTriangle(sides) {
  return Math.pow(sides[0], 2) === (Math.pow(sides[1], 2) + Math.pow(sides[2], 2));
}

function isObtusangleTriangle(sides) {
  return Math.pow(sides[0], 2) > (Math.pow(sides[1], 2) + Math.pow(sides[2], 2));
}

function isAcutanguloTriangle(sides) {
  return Math.pow(sides[0], 2) < (Math.pow(sides[1], 2) + Math.pow(sides[2], 2));
}

function isEquilateralTriangle(sides) {
  return sides[0] === sides[1] && sides[0] === sides[2] && sides[1] === sides[2];
}

function isIsoscelesTriangle(sides) {
  return sides[0] === sides[1] || sides[0] === sides[2] || sides[1] === sides[2];
}
