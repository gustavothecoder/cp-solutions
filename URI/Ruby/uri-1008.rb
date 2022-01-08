#URI - 1008: https://www.urionlinejudge.com.br/judge/pt/problems/view/1008

Employee_number = gets.to_i
Number_of_hours_worked = gets.to_i
Value_per_hour = gets.to_f
Salary = Number_of_hours_worked * Value_per_hour
puts "NUMBER = #{Employee_number}"
puts "SALARY = U$ #{'%.2f' % Salary}"