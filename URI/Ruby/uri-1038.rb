# frozen_string_literal: true

# URI - 1038: https://www.urionlinejudge.com.br/judge/pt/problems/view/1038

ITEMS = [{ specification: 'Cachorro Quente', price: 4.00 },
         { specification: 'X-Salada', price: 4.50 },
         { specification: 'X-Bacon', price: 5.00 },
         { specification: 'Torrada Simples', price: 2.00 },
         { specification: 'Refrigerante', price: 1.50 }].freeze

def calculate_total_price(item_code, item_quantity)
  item_price = ITEMS[item_code - 1][:price]
  'Total: R$ ' + format('%<total_price>.2f', total_price: (item_price * item_quantity))
end

values = gets.split(' ').map(&:to_i)
puts calculate_total_price(values[0], values[1])
