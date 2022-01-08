# frozen_string_literal: true

# URI - 1041: https://www.urionlinejudge.com.br/judge/pt/problems/view/1041

def determine_quadrant_of(coordinate_x, coordinate_y)
  if coordinate_x.zero? && coordinate_y.zero?
    'Origem'
  elsif result = the_point_is_on_some_axis?(coordinate_x, coordinate_y)
    result
  elsif result = the_point_is_on_some_quadrant?(coordinate_x, coordinate_y)
    result
  end
end

def the_point_is_on_some_axis?(coordinate_x, coordinate_y)
  if coordinate_x.zero?
    'Eixo Y'
  elsif coordinate_y.zero?
    'Eixo X'
  end
end

def the_point_is_on_some_quadrant?(coordinate_x, coordinate_y)
  if coordinate_x.negative? && coordinate_y.negative?
    'Q3'
  elsif coordinate_x.negative? && coordinate_y.positive?
    'Q2'
  elsif coordinate_x.positive? && coordinate_y.negative?
    'Q4'
  else
    'Q1'
  end
end

coordinates = gets.split(' ').map(&:to_f)
puts determine_quadrant_of(coordinates[0], coordinates[1])
