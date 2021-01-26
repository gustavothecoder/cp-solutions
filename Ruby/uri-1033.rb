# frozen_string_literal: true

# URI - 1033: https://www.urionlinejudge.com.br/judge/pt/problems/view/1033

def calculate_the_number_of_fibonacci_recursive_calls(number_fibonacci, recursive_call_count_array)
  return '1' if number_fibonacci < 2
  return recursive_call_count_array[number_fibonacci] if recursive_call_count_array.size > number_fibonacci

  fibonacci = recursive_call_count_array.size
  while fibonacci <= number_fibonacci
    recursive_call_count_array << 1 + (recursive_call_count_array[fibonacci - 1] +
                                      recursive_call_count_array[fibonacci - 2])
    fibonacci += 1
  end
  recursive_call_count_array[number_fibonacci]
end

recursive_call_count_array = [1, 1]
case_counter = 1
loop do
  input = gets.chomp.split(' ')
  break if input[0] == '0' && input[1] == '0'

  fibonacci_number = input[0].to_i
  base_number = input[1].to_i
  case_info = "Case #{case_counter}: #{fibonacci_number} #{base_number} "
  puts case_info + (calculate_the_number_of_fibonacci_recursive_calls(fibonacci_number,
                                                                      recursive_call_count_array) % base_number).to_s
  case_counter += 1
end
