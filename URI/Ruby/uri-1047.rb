# frozen_string_literal: true

# URI - 1047: https://www.urionlinejudge.com.br/judge/pt/problems/view/1047

def get_game_duration(time)
  game_duration = calculate_game_duration(time)
  if game_duration[:hours].zero? && game_duration[:minutes].zero?
    'O JOGO DUROU 24 HORA(S) E 0 MINUTO(S)'
  else
    "O JOGO DUROU #{game_duration[:hours]} HORA(S) E #{game_duration[:minutes]} MINUTO(S)"
  end
end

def calculate_game_duration(time)
  minutes = time[3] - time[1]
  hours = time[2] - time[0]
  hours = define_hours(hours, minutes)
  if minutes.negative?
    minutes += 60
    hours -= 1
  end
  { hours: hours, minutes: minutes }
end

def define_hours(hours, minutes)
  if hours.negative?
    24 - hours.abs
  elsif hours.zero? && minutes.negative?
    24
  else
    hours
  end
end

time = gets.split(' ').map(&:to_i)
puts get_game_duration(time)
