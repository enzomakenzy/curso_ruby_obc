puts "Digite o primeiro número"
n1 = gets.chomp.to_i

puts "Digite o segundo número"
n2 = gets.chomp.to_i

puts "Escolha uma dessas operações para ser feita com eles: (+  -  *  /)"
operattion = gets.chomp

if operattion == "+"
  puts n1 + n2
elsif operattion == "-"
  puts n1 - n2
elsif operattion == "*"
  puts n1 * n2
else 
  puts n1 / n2
end