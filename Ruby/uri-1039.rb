# frozen_string_literal: true

# URI - 1039: https://www.urionlinejudge.com.br/judge/pt/problems/view/1039

def take_fire_flower(values)
  if does_the_hunter_catch_the_flower?(values)
    'RICO'
  else
    'MORTO'
  end
end

def does_the_hunter_catch_the_flower?(values)
  values[0] >= calculate_euclidean_distance(values) + values[3]
end

def calculate_euclidean_distance(values)
  Math.sqrt(((values[4] - values[1])**2) + ((values[5] - values[2])**2))
end

while values = gets&.split(' ')&.map(&:to_i)
  puts take_fire_flower(values)
end
