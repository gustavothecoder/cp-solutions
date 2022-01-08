#URI - 1020: https://www.urionlinejudge.com.br/judge/pt/problems/view/1020

age_in_days = gets.to_i
Years = age_in_days / 365
age_in_days -= Years * 365
Months = age_in_days / 30
age_in_days -= Months * 30

puts "#{Years} ano(s)"
puts "#{Months} mes(es)"
puts "#{age_in_days} dia(s)"