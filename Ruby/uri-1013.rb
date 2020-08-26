#URI - 1013: https://www.urionlinejudge.com.br/judge/pt/problems/view/1013

Input = gets.split(' ')
A = Input[0].to_i
B = Input[1].to_i
C = Input[2].to_i
BiggerAB = (A + B + (A - B).abs) / 2

if BiggerAB > C
    puts "#{BiggerAB} eh o maior"
else
    puts "#{C} eh o maior"
end