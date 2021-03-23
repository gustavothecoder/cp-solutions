# frozen_string_literal: true

# URI - 1051: https://www.urionlinejudge.com.br/judge/pt/problems/view/1051

INFINITE = 9999.99

def calculate_income_tax(salary)
  return 'Isento' if salary <= 2000.00

  income_tax = calculate_income_tax_for(salary, 2000.00, 3000.00, 0.08)
  income_tax += calculate_income_tax_for(salary, 3000.00, 4500.00, 0.18) if salary > 3000.00
  income_tax += calculate_income_tax_for(salary, 4500.00, INFINITE, 0.28) if salary > 4500.00
  format('R$ %<tax>.2f', tax: income_tax)
end

def calculate_income_tax_for(salary, taxed_salary, next_limit, percentage)
  if salary <= next_limit
    (salary - taxed_salary) * percentage
  else
    (salary - (taxed_salary + (salary - next_limit))) * percentage
  end
end

salary = gets.to_f
puts calculate_income_tax(salary)
