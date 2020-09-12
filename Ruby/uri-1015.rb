#URI - 1015: https://www.urionlinejudge.com.br/judge/pt/problems/view/1015

Point_1 = gets.split(' ')
Point_2 = gets.split(' ')
Distance_between_points = Math.sqrt((Point_2[0].to_f - Point_1[0].to_f)**2 + (Point_2[1].to_f - Point_1[1].to_f)**2)
puts '%.4f' % Distance_between_points