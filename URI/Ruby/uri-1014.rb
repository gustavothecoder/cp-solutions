#URI - 1014: https://www.urionlinejudge.com.br/judge/pt/problems/view/1014

Total_distance_in_Km = gets.to_i
Total_fuel_spent = gets.to_f
Average_consumption = Total_distance_in_Km / Total_fuel_spent
puts "#{'%.3f' % Average_consumption} km/l"