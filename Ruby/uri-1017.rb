#URI - 1017: https://www.urionlinejudge.com.br/judge/pt/problems/view/1017

Travel_time_in_hours = gets.to_i
Average_speed = gets.to_i
Automobile_consumption = 12.0
Quantity_of_fuel_needed_in_liters = (Average_speed / Automobile_consumption) * Travel_time_in_hours
puts '%.3f' % Quantity_of_fuel_needed_in_liters