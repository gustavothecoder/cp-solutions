#URI - 1019: https://www.urionlinejudge.com.br/judge/pt/problems/view/1019

seconds = gets.to_i
Hours = (seconds / 3600).round
seconds -= Hours * 3600
Minutes = (seconds / 60).round
seconds -= Minutes * 60

puts "#{Hours}:#{Minutes}:#{seconds}"