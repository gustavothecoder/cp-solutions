# frozen_string_literal: true

# URI - 1034: https://www.urionlinejudge.com.br/judge/pt/problems/view/1034

def calculate_the_minimum_number_of_blocks(blocks, desidered_size)
  minimum_number_of_blocks = [0]
  (1..desidered_size).each do |current_size|
    minimum_number_of_blocks[current_size] = INFINITE
    select_blocks(blocks, minimum_number_of_blocks, current_size)
  end
  minimum_number_of_blocks[desidered_size]
end

def select_blocks(blocks, minimum_number_of_blocks, current_size)
  (0...blocks.length).each do |block_index|
    next unless current_size - blocks[block_index] >= 0

    minimum_number_of_blocks[current_size] = [
      minimum_number_of_blocks[current_size],
      minimum_number_of_blocks[current_size - blocks[block_index]] + 1
    ].min { |a, b| a <=> b }
  end
end

INFINITE = 99_999
number_of_instances = gets.to_i
number_of_instances.times do
  input = gets.chomp.split(' ')
  blocks = gets.chomp.split(' ').map(&:to_i)
  puts calculate_the_minimum_number_of_blocks(blocks, input[1].to_i)
end
