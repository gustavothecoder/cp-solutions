# frozen_string_literal: true

# URI - 1035: https://www.urionlinejudge.com.br/judge/pt/problems/view/1035

def check_that_these_values_are_valid(values)
  if are_they_valid?(values)
    'Valores aceitos'
  else
    'Valores nao aceitos'
  end
end

def are_they_valid?(values)
  values[1] > values[2] &&
    values[3] > values[0] &&
    values[2] + values[3] > values[0] + values[1] &&
    values[2].positive? &&
    values[3].positive? &&
    values[0].even?
end

values = gets.chomp.split(' ').map(&:to_i)
puts check_that_these_values_are_valid(values)
