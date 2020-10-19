#URI - 1025: https://www.urionlinejudge.com.br/judge/pt/problems/view/1025

def not_have_test_case(test_case)
    return test_case[0].to_i == 0 && test_case[1].to_i == 0
end

def collect_marbles(number_of_marbles, marbles) 
    number_of_marbles.times do
        marbles << gets.to_i 
    end 
end


def collect_queries(number_of_queries, queries) 
    number_of_queries.times do 
        queries << gets.to_i
    end
end

def make_queries(queries, marbles)
    queries.each do |query| 
        result = marbles.find_index(query)
        show_result(result, query)
    end
end

def show_result(result, query) 
    if result.nil?
        puts "#{query} not found"
    else
        puts "#{query} found at #{result + 1}"
    end
end

case_counter = 1
while true
    test_case = gets.split(' ')
    if not_have_test_case(test_case)
        break
    end
    number_of_marbles = test_case[0].to_i
    number_of_queries = test_case[1].to_i
    marbles = []
    collect_marbles(number_of_marbles, marbles)
    queries = []
    collect_queries(number_of_queries, queries)
    marbles.sort!
    puts "CASE# #{case_counter}:"
    make_queries(queries, marbles)    
    case_counter += 1
end