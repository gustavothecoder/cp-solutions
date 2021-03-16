# frozen_string_literal: true

# URI - 1046: https://www.urionlinejudge.com.br/judge/pt/problems/view/1046

def calculate_game_duration(start_time, end_time)
  return 'O JOGO DUROU 24 HORA(S)' if start_time == end_time

  duration = if start_time < end_time
               end_time - start_time
             else
               (end_time + 24) - start_time
             end
  "O JOGO DUROU #{duration} HORA(S)"
end

input = gets.split(' ').map(&:to_i)
puts calculate_game_duration(input[0], input[1])
