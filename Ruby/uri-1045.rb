# frozen_string_literal: true

# URI - 1045: https://www.urionlinejudge.com.br/judge/pt/problems/view/1045

def type_of_this_triangle(triangle)
  types = []
  not_triangle?(triangle, types)
  if types.empty?
    right_triangle?(triangle, types)
    triangle_obtusangulo?(triangle, types)
    acutangle_triangle?(triangle, types)
    equilateral_triangle?(triangle, types)
    isosceles_triangle?(triangle, types) if types.last != 'TRIANGULO EQUILATERO'
  end
  types
end

def not_triangle?(triangle, types)
  types << 'NAO FORMA TRIANGULO' if triangle[0] >= (triangle[1] + triangle[2])
end

def right_triangle?(triangle, types)
  types << 'TRIANGULO RETANGULO' if triangle[0]**2 == (triangle[1]**2 + triangle[2]**2)
end

def triangle_obtusangulo?(triangle, types)
  types << 'TRIANGULO OBTUSANGULO' if triangle[0]**2 > (triangle[1]**2 + triangle[2]**2)
end

def acutangle_triangle?(triangle, types)
  types << 'TRIANGULO ACUTANGULO' if triangle[0]**2 < (triangle[1]**2 + triangle[2]**2)
end

def equilateral_triangle?(triangle, types)
  types << 'TRIANGULO EQUILATERO' if triangle[0] == triangle[1] && triangle[0] == triangle[2]
end

def isosceles_triangle?(triangle, types)
  types << 'TRIANGULO ISOSCELES' if triangle[0] == triangle[1] ||
                                    triangle[0] == triangle[2] ||
                                    triangle[1] == triangle[2]
end

triangle = gets.split(' ').map(&:to_f)
puts type_of_this_triangle(triangle.sort { |a, b| b <=> a })
