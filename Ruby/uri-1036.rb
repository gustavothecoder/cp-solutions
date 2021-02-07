# frozen_string_literal: true

# URI - 1036: https://www.urionlinejudge.com.br/judge/pt/problems/view/1036

def calculate_bhaskara_roots(values)
  delta = values[1]**2 - (4 * values[0] * values[2])
  divider = 2 * values[0]
  return 'Impossivel calcular' if delta.negative? || divider.zero?

  { R1: ((-values[1] + Math.sqrt(delta)) / divider).round(5),
    R2: ((-values[1] - Math.sqrt(delta)) / divider).round(5) }
end

values = gets.chomp.split(' ').map(&:to_f)
result = calculate_bhaskara_roots(values)
if result.is_a?(String)
  puts result
else
  puts "R1 = #{result[:R1]}"
  puts "R2 = #{result[:R2]}"
end
