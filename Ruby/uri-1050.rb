# frozen_string_literal: true

# URI - 1050: https://www.urionlinejudge.com.br/judge/pt/problems/view/1050

def ddd_region(ddd)
  case ddd
  when 61
    'Brasilia'
  when 71
    'Salvador'
  when 11
    'Sao Paulo'
  when 21
    'Rio de Janeiro'
  when 32
    'Juiz de Fora'
  when 19
    'Campinas'
  when 27
    'Vitoria'
  when 31
    'Belo Horizonte'
  else
    'DDD nao cadastrado'
  end
end

ddd = gets.to_i
puts ddd_region(ddd)
