#URI - 1029: https://www.urionlinejudge.com.br/judge/pt/problems/view/1029

class Fibonacci
  @@recursive_call_counter = 0

  def search_fibonacci_number(number)
    if (number < 2)
      return number
    end
    @@recursive_call_counter += 2
    return search_fibonacci_number(number - 1) + search_fibonacci_number(number - 2)
  end

  def get_recursive_call_counter
    return @@recursive_call_counter
  end

  def reset_recursive_call_counter
    @@recursive_call_counter = 0
  end
end

number_of_test_cases = gets.to_i
fibonacci = Fibonacci.new
number_of_test_cases.times do
  number = gets.to_i
  fibonacci_number = fibonacci.search_fibonacci_number(number)
  number_of_recursive_calls = fibonacci.get_recursive_call_counter()
  puts "fib(#{number}) = #{number_of_recursive_calls} calls = #{fibonacci_number}"
  fibonacci.reset_recursive_call_counter()
end