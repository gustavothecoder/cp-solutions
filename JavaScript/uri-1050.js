// URI - 1050: https://www.urionlinejudge.com.br/judge/pt/problems/view/1050

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const DDD = parseInt(input);

const cities = new Array();

console.log(searchCityWithDDD(DDD));


function searchCityWithDDD(DDD) {
  if (cities.length === 0)
    initializeCitiesArray();
  const city = cities.find(city => city.DDD === DDD);
  return city ? city.name : 'DDD nao cadastrado';
}

function initializeCitiesArray() {
  const names = new Array('Brasilia', 'Salvador', 'Sao Paulo', 'Rio de Janeiro',
                          'Juiz de Fora', 'Campinas', 'Vitoria', 'Belo Horizonte');
  const DDDs = new Array(61, 71, 11, 21, 32, 19, 27, 31);
  for (let i = 0; i < names.length; i++) 
    cities.push({ name: names[i], DDD: DDDs[i] });
}
