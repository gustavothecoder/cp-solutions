#URI - 1018: https://www.urionlinejudge.com.br/judge/pt/problems/view/1018

def calculate_minimum_amount_of_banknotes(banknote, cash)
    amount_of_banknotes = 0
    while cash >= banknote
        cash -= banknote
        amount_of_banknotes += 1
    end
    return amount_of_banknotes
end

cash = gets.to_i
Banknotes = [100, 50, 20, 10, 5, 2, 1]

puts cash 

Banknotes.each do |banknote| 
    result = calculate_minimum_amount_of_banknotes(banknote, cash)
    puts "#{result} nota(s) de R$ #{banknote},00"
    cash -= banknote * result
end