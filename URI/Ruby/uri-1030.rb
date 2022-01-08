#URI - 1030: https://www.urionlinejudge.com.br/judge/pt/problems/view/1030

def resolve_flavius_josephus_problem(number_of_people, death_jump)
  return number_of_people > 1 ? (resolve_flavius_josephus_problem(number_of_people - 1, death_jump) + death_jump - 1) % number_of_people + 1 : 1
end

number_of_test_cases = gets.to_i
number_of_test_cases.times do |number_of_case|
  input =gets.split(' ')
  number_of_people = input[0].to_i
  death_jump = input[1].to_i
  survivor = resolve_flavius_josephus_problem(number_of_people, death_jump)
  puts "Case #{number_of_case + 1}: #{survivor}"
end