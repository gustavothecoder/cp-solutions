# frozen_string_literal: true

# URI - 1044: https://www.urionlinejudge.com.br/judge/pt/problems/view/1044

def multiple?(values)
  result = if values[0] >= values[1]
             values[0] % values[1]
           else
             values[1] % values[0]
           end
  result.zero? ? 'Sao Multiplos' : 'Nao sao Multiplos'
end

values = gets.split(' ').map(&:to_i)
puts multiple?(values)
