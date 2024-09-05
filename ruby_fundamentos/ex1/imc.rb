puts "Informe os dados abaixo para calcular o seu IMC"
puts "-----------------------------------------------"
puts "Peso(kg): "
peso = gets.chomp.to_f
puts "Altura(cm): "
altura = gets.chomp.to_f

imc = peso / (altura ** 2)

puts imc
