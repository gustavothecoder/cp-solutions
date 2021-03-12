# frozen_string_literal: true

# URI - 1043: https://www.urionlinejudge.com.br/judge/pt/problems/view/1043

def calculate_area_or_perimeter(values)
  if triangle?(values)
    "Perimetro = #{values[0] + values[1] + values[2]}"
  else
    "Area = #{(((values[0] + values[1]) * values[2]) / 2)}"
  end
end

def triangle?(values)
  (values[0] < values[1] + values[2]) &&
    (values[1] < values[0] + values[2]) &&
    (values[2] < values[0] + values[1])
end

values = gets.split(' ').map(&:to_f)
puts calculate_area_or_perimeter(values)
