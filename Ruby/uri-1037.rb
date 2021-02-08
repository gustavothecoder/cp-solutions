# frozen_string_literal: true

# URI - 1037: https://www.urionlinejudge.com.br/judge/pt/problems/view/1037

def get_range(value)
  if value.negative? || value > 100
    'Fora de intervalo'
  elsif value >= 0 && value <= 25.00
    'Intervalo [0,25]'
  elsif value <= 50.00
    'Intervalo (25,50]'
  elsif value <= 75.00
    'Intervalo (50,75]'
  else
    'Intervalo (75,100]'
  end
end

value = gets.to_f
puts get_range(value)
