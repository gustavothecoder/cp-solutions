// URI - 1049: https://www.urionlinejudge.com.br/judge/pt/problems/view/1049

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const characteristics = input.split('\n');

const eagleCharacteristics = ['vertebrado', 'ave', 'carnivoro'];
const doveCharacteristics = ['vertebrado', 'ave', 'onivoro'];
const humanCharacteristics = ['vertebrado', 'mamifero', 'onivoro'];
const cowCharacteristics = ['vertebrado', 'mamifero', 'herbivoro'];
const fleaCharacteristics = ['invertebrado', 'inseto', 'hematofago'];
const wormCharacteristics = ['invertebrado', 'inseto', 'herbivoro'];
const leechCharacteristics = ['invertebrado', 'anelideo', 'hematofago'];
const earthWormCharacteristics = ['invertebrado', 'anelideo', 'onivoro'];

console.log(searchForAnimalWithTheseCharacteristics(characteristics));

function searchForAnimalWithTheseCharacteristics(characteristics) {
  let animal = checkIfIsVertebrateAnimal(characteristics);
  if (animal)
    return animal;
  else if (animal = checkIfIsInvertebrateAnimal(characteristics))
    return animal;
  else
    return 'Not found.'
}

function checkIfIsVertebrateAnimal(characteristics) {
  if (checkCharacteristics(characteristics, eagleCharacteristics))
    return 'aguia';
  else if (checkCharacteristics(characteristics, doveCharacteristics))
    return 'pomba';
  else if (checkCharacteristics(characteristics, humanCharacteristics))
    return 'homem';
  else if (checkCharacteristics(characteristics, cowCharacteristics))
    return 'vaca';
}

function checkIfIsInvertebrateAnimal(characteristics) {
  if (checkCharacteristics(characteristics, fleaCharacteristics))
    return 'pulga';
  else if (checkCharacteristics(characteristics, wormCharacteristics))
    return 'lagarta';
  else if (checkCharacteristics(characteristics, leechCharacteristics))
    return 'sanguessuga';
  else if (checkCharacteristics(characteristics, earthWormCharacteristics))
    return 'minhoca';
}

function checkCharacteristics(receivedCharacteristics, animalCharacteristics) {
  return animalCharacteristics.includes(receivedCharacteristics[0]) &&
         animalCharacteristics.includes(receivedCharacteristics[1]) &&
         animalCharacteristics.includes(receivedCharacteristics[2]);
}
