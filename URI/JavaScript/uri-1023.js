// URI - 1023: https://www.urionlinejudge.com.br/judge/pt/problems/view/1023

const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

class Property {
  constructor(numberOfResidents, consumption) {
    this.numberOfResidents = numberOfResidents;
    this.consumption = consumption;
  }

  toString() {
    return this.numberOfResidents.toString() + '-' + this.consumption.toString() + ' ';
  }
}

class City {
  constructor() {
    this.properties = new Array();
    this.consumptionOfProperties = new Array();
  }

  addProperties(numberOfProperties) {
    let propertyInfo;
    let property;
    for (let i = 0; i < numberOfProperties; i++) {
      propertyInfo = lines.shift().split(' ');
      property = new Property(parseInt(propertyInfo[0]), parseInt(propertyInfo[1]));
      this.properties.push(property);
    }
  }

  calculateTheAverageConsumptionOfEachProperty() {
    let average, index;
    this.properties.forEach(property => {
      average = Math.floor(property.consumption / property.numberOfResidents);
      index = this.consumptionOfProperties.findIndex(property => property.consumption === average);
      if (index === -1) {
        property.consumption = average;
        this.consumptionOfProperties.push(property);
      }
      else
        this.consumptionOfProperties[index].numberOfResidents += property.numberOfResidents;
    });
  }

  sortArrayOfConsumptions() {
    this.consumptionOfProperties.sort((a, b) => a.consumption - b.consumption);
  }

  getAverageConsumptionInEachProperty() {
    let result = new Array();
    this.consumptionOfProperties.forEach(property => {
      result += property.toString();
    });  
    return result;
  }

  getAverageConsumptionInTheCity() {
    let consumptions = 0, average = 0;
    this.consumptionOfProperties.forEach(property => {
      consumptions += property.consumption;
    });
    average = consumptions / this.properties.length;
    return average.toFixed(2);
  }

  resetPropertiesArrays() {
    this.properties = new Array();
    this.consumptionOfProperties = new Array();
  }
}

const city = new City();
let numberOfProperties = lines.shift(), cityCounter = 1;
while (numberOfProperties != 0) {
  console.log('Cidade# ' + cityCounter + ':');
  city.addProperties(numberOfProperties);
  city.calculateTheAverageConsumptionOfEachProperty();
  city.sortArrayOfConsumptions();
  console.log(city.getAverageConsumptionInEachProperty());
  console.log('Consumo medio: ' + city.getAverageConsumptionInTheCity() + ' m3.');
  city.resetPropertiesArrays();
  numberOfProperties = lines.shift();
  cityCounter++;
  console.log();
}