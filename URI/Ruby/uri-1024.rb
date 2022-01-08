#URI - 1024: https://www.urionlinejudge.com.br/judge/pt/problems/view/1024

def encrypt_level_one(text)
    new_text = []
    text.each_byte do |letter| 
        if (is_letter(letter))
            new_text << (letter + 3).chr    
        else
            new_text << letter.chr
        end
    end
    return new_text
end

def is_letter(ascii_number)
    return (ascii_number >= 65 && ascii_number <= 90) || (ascii_number >= 97 && ascii_number <= 122)
end

def encrypt_level_two(text)
    text.reverse
end

def encrypt_level_three(text)
    new_text = []
    middle = (text.length / 2).floor
    text.each_with_index do |letter, index| 
        if index < middle
            new_text << letter
        else
            new_text << (letter.ord - 1).chr
        end
    end    
    return new_text
end

number_of_test_cases = gets.to_i
number_of_test_cases.times do
    text_to_be_encrypted = gets.chomp
    encrypted_text = encrypt_level_one(text_to_be_encrypted)
    encrypted_text = encrypt_level_two(encrypted_text)
    encrypted_text = encrypt_level_three(encrypted_text)
    puts encrypted_text.join
end