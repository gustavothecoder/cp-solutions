#URI - 1009: https://www.urionlinejudge.com.br/judge/pt/problems/view/1009

Sellers_name = gets
Salary = gets.to_f
Total_cash_sales = gets.to_f
Final_salary = Salary + (Total_cash_sales * 0.15)
puts "TOTAL = R$ #{'%.2f' % Final_salary}"