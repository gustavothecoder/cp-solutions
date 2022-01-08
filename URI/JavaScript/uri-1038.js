// URI - 1038: https://www.urionlinejudge.com.br/judge/pt/problems/view/1038

class Food {
  constructor(code, specification, price) {
    this.code = code;
    this.specification = specification;
    this.price = price;
  }

  getPrice() {
    return this.price.toFixed(2);
  }
}

class Menu {
  constructor() {
    this.items = new Array();
    this.initializeMenu();
  }

  initializeMenu() {
    const specifications = new Array('Cachorro Quente', 'X-Salada', 'X-Bacon', 'Torrada simples', 'Refrigerante');
    const prices = new Array(4.00, 4.50, 5.00, 2.00, 1.50);
    let food;
    for (let i = 0; i < specifications.length; i++) {
      food = new Food(i + 1, specifications[i], prices[i]);
      this.items.push(food);
    }
  }

  getPriceFromItem(itemCode) {
    const item = this.items.find(item => item.code === itemCode);
    return item.getPrice();
  }
}

class Order {
  constructor(itemCode, quantity) {
    this.itemCode = itemCode;
    this.quantity = quantity;
  }

  calculatePriceForOrder() {
    const menu = new Menu();
    const priceFromItem = menu.getPriceFromItem(this.itemCode);
    return 'Total: R$ ' + (priceFromItem * this.quantity).toFixed(2);
  }
}

const input = require('fs').readFileSync('/dev/stdin', 'utf-8');
const line = input.split('\n');
const orderInfo = line[0].split(' ');
const order = new Order(parseInt(orderInfo[0]), parseInt(orderInfo[1]));
console.log(order.calculatePriceForOrder()); 