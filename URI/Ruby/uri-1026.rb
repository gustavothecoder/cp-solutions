#URI - 1026: https://www.urionlinejudge.com.br/judge/pt/problems/view/1026

while input = gets
    if input.length < 2
        break
    end
    input = input.split(' ')
    puts input[0].to_i ^ input[1].to_i
end