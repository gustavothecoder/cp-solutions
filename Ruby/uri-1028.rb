#URI - 1028: https://www.urionlinejudge.com.br/judge/pt/problems/view/1028

number_of_test_cases = gets.to_i

number_of_test_cases.times do 
    input = gets.split(' ')
    number_of_cards_from_ricardo = input[0].to_i
    number_of_cards_from_vicente = input[1].to_i
    maximum_number_of_cards_to_be_exchanged = number_of_cards_from_ricardo.gcd(number_of_cards_from_vicente)
    puts maximum_number_of_cards_to_be_exchanged
end