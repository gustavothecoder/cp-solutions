# frozen_string_literal: true

# URI - 1052: https://www.urionlinejudge.com.br/judge/pt/problems/view/1052

MONTHS = %w[Nothing January February March April May June July August September October November December].freeze

month_number = gets.to_i
puts MONTHS[month_number]