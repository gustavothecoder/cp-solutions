#URI - 1012: https://www.urionlinejudge.com.br/judge/pt/problems/view/1012

Input = gets.split(' ')
A = Input[0].to_f
B = Input[1].to_f
C = Input[2].to_f

Triangle_area = A * C / 2
Circle_area = 3.14159 * C**2
Trapezoid_area = (A + B) * C / 2
Square_area = B**2
Rectangle_area = A * B

puts "TRIANGULO: #{'%.3f' % Triangle_area}"
puts "CIRCULO: #{'%.3f' % Circle_area}"
puts "TRAPEZIO: #{'%.3f' % Trapezoid_area}"
puts "QUADRADO: #{'%.3f' % Square_area}"
puts "RETANGULO: #{'%.3f' % Rectangle_area}"