#URI - 1021: https://www.urionlinejudge.com.br/judge/pt/problems/view/1021

def calculate_the_minimum_number_of_banknotes(banknote, cash)
    number_of_banknotes = 0
    while cash >= banknote
        cash -= banknote
        number_of_banknotes += 1
    end
    return number_of_banknotes
end

def calculate_the_minimum_number_of_coins(coin, cash) 
    number_of_coins = 0
    while cash >= coin
        cash = (cash - coin).round(2)
        number_of_coins += 1
    end
    return number_of_coins
end

cash = gets.to_f

puts "NOTAS:"
Banknotes = [100.00, 50.00, 20.00, 10.00, 5.00, 2.00]
Banknotes.each do |banknote|
    result = calculate_the_minimum_number_of_banknotes(banknote, cash)
    puts "#{result} nota(s) de R$ #{'%.2f' % banknote}"
    cash -= banknote * result
end

puts "MOEDAS:"
Coins = [1.00, 0.50, 0.25, 0.10, 0.05, 0.01]
Coins.each do |coin|
    result = calculate_the_minimum_number_of_coins(coin, cash)
    puts "#{result} moeda(s) de R$ #{'%.2f' % coin}"
    cash = (cash - (coin * result)).round(2)
end