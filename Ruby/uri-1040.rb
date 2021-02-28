# frozen_string_literal: true

# URI - 1040: https://www.urionlinejudge.com.br/judge/pt/problems/view/1040

def calculate_average_grade(grades)
  (grades[0] * 2.0 + grades[1] * 3.0 + grades[2] * 4.0 + grades[3]) / 10.0
end

def check_student_situation(average_grade)
  if average_grade >= 7.0
    'Aluno aprovado.'
  elsif average_grade < 5.0
    'Aluno reprovado.'
  else
    'Aluno em exame.'
  end
end

def calculate_final_grade(average_grade, recovery_grade)
  (average_grade + recovery_grade) / 2.0
end

def check_student_final_situation(final_grade)
  if final_grade >= 5.0
    'Aluno aprovado.'
  else
    'Aluno reprovado.'
  end
end

grades = gets.split(' ').map(&:to_f)
average_grade = calculate_average_grade(grades)
puts "Media: #{average_grade.truncate(1)}"
puts student_situation = check_student_situation(average_grade)
if student_situation == 'Aluno em exame.'
  puts "Nota do exame: #{recovery_grade = gets.to_f}"
  final_grade = calculate_final_grade(average_grade, recovery_grade)
  puts check_student_final_situation(final_grade)
  puts "Media final: #{final_grade.truncate(1)}"
end
