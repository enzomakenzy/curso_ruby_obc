puts "Informe o nome do filme: "
movie_name = gets.chomp
puts movie_name

puts 

puts "Informe o ano do filme: "
movie_year = gets.chomp

puts "O ano do filme é: "
puts movie_year

puts "O tipo de sua variável é: "
puts movie_year.class

=begin
  perceba que a variável movie_year está com o tipo string mesmo após passar um tipo inteiro, isso porque gets.chomp passa pra string automaticamente qualquer coisa que receber. Para converter automaticamente usamos: 
 
  gets.chomp.to_i
  gets.chomp.to_f
  gets.chomp.to_s

=end


puts "Digite mais um número: "
movie_year2 = gets.chomp.to_i

puts "O tipo de sua variável agora é de acordo: "
puts movie_year2.class