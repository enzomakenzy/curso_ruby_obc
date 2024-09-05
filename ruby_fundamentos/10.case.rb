puts "Informe a idade"
age = gets.chomp.to_i

case age 
  when 1..2
     puts "Bebê"
  when 3..9 
    puts "Criança"
  when 10..13
    puts "Pré-adolescente"
  when 14..17
    puts "Adolescente"
  else 
    puts "Adulto"
end