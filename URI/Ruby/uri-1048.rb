# frozen_string_literal: true

# URI - 1048: https://www.urionlinejudge.com.br/judge/pt/problems/view/1048

def readjust_salary(salary)
  if salary <= 400.00
    calculate_new_salary(salary, 0.15)
  elsif salary <= 800.00
    calculate_new_salary(salary, 0.12)
  elsif salary <= 1200.00
    calculate_new_salary(salary, 0.10)
  elsif salary <= 2000.00
    calculate_new_salary(salary, 0.07)
  else
    calculate_new_salary(salary, 0.04)
  end
end

def calculate_new_salary(salary, readjustment_percentage)
  gain = salary * readjustment_percentage
  {
    new_salary: (salary + gain),
    gain_adjustment: gain,
    percentage_gain: "#{(readjustment_percentage * 100).to_i} %"
  }
end

salary = gets.to_f
new_salary_data = readjust_salary(salary)
puts(format('Novo salario: %<new_salary>.2f', new_salary: new_salary_data[:new_salary]))
puts(format('Reajuste ganho: %<gain_adjustment>.2f', gain_adjustment: new_salary_data[:gain_adjustment]))
puts "Em percentual: #{new_salary_data[:percentage_gain]}"
