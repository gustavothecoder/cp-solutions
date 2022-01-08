#URI - 1022: https://www.urionlinejudge.com.br/judge/pt/problems/view/1022

def calculate_mathematical_expression(mathematical_expression)
    values = [mathematical_expression[0].to_i, mathematical_expression[2].to_i,
              mathematical_expression[4].to_i, mathematical_expression[6].to_i]
    operation = mathematical_expression[3]
    case operation
    when "+"
        result = sum(values)
    when "-"
        result = subtract(values)
    when "*"
        result = multiply(values)
    when "/"
        result = divide(values)
    else
        puts "Invalid operator"
    end
    return result
end

def sum(values)
    return [(values[0] * values[3] + values[2] * values[1]), (values[1] * values[3])]
end

def subtract(values)
    return [(values[0] * values[3] - values[2] * values[1]), (values[1] * values[3])]
end

def multiply(values)
    return [(values[0] * values[2]), (values[1] * values[3])]
end

def divide(values)
    return [(values[0] * values[3]), (values[2] * values[1])]
end

def simplify_result(result)
    return Rational(result[0], result[1])
end

def show_results(result, simplified_result)
    puts "#{result[0]}/#{result[1]} = #{simplified_result}"
end

Number_of_test_cases = gets.to_i
Number_of_test_cases.times do
    input = gets.split(' ')
    result = calculate_mathematical_expression(input)
    simplified_result = simplify_result(result)
    show_results(result, simplified_result)
end