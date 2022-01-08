# frozen_string_literal: true

# URI - 1049: https://www.urionlinejudge.com.br/judge/pt/problems/view/1049

def search_for_animal(characteristics)
  if characteristics[0] == 'vertebrado'
    search_for_vertebrate(characteristics)
  elsif characteristics[0] == 'invertebrado'
    search_for_invertebrate(characteristics)
  end
end

def search_for_vertebrate(characteristics)
  if characteristics[1] == 'ave'
    search_for_bird(characteristics)
  elsif characteristics[1] == 'mamifero'
    search_for_mammal(characteristics)
  end
end

def search_for_bird(characteristics)
  if characteristics[2] == 'carnivoro'
    'aguia'
  elsif characteristics[2] == 'onivoro'
    'pomba'
  end
end

def search_for_mammal(characteristics)
  if characteristics[2] == 'onivoro'
    'homem'
  elsif characteristics[2] == 'herbivoro'
    'vaca'
  end
end

def search_for_invertebrate(characteristics)
  if characteristics[1] == 'inseto'
    search_for_insect(characteristics)
  elsif characteristics[1] == 'anelideo'
    search_for_annelid(characteristics)
  end
end

def search_for_insect(characteristics)
  if characteristics[2] == 'hematofago'
    'pulga'
  elsif characteristics[2] == 'herbivoro'
    'lagarta'
  end
end

def search_for_annelid(characteristics)
  if characteristics[2] == 'hematofago'
    'sanguessuga'
  elsif characteristics[2] == 'onivoro'
    'minhoca'
  end
end

first_characteristic = gets.chomp
second_characteristic = gets.chomp
third_characteristic = gets.chomp
puts search_for_animal [first_characteristic, second_characteristic, third_characteristic]
