#URI - 1010: https://www.urionlinejudge.com.br/judge/pt/problems/view/1010

class Piece
    def initialize(code, number_of_pieces, unitary_value)
        @code = code
        @number_of_pieces = number_of_pieces
        @unitary_value = unitary_value
    end
    def calculate_price
        price = @number_of_pieces * @unitary_value
        return price
    end
end

input = gets.split(' ')
Piece_A = Piece.new(input[0].to_i, input[1].to_i, input[2].to_f)
input = gets.split(' ')
Piece_B = Piece.new(input[0].to_i, input[1].to_i, input[2].to_f)
Total_payable = Piece_A.calculate_price + Piece_B.calculate_price

puts "VALOR A PAGAR: R$ #{'%.2f' % Total_payable}"