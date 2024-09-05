puts "Informe o nome do filme:"
name = gets.chomp

puts "Informa o ano do filme:"
movie_year = gets.chomp.to_i

puts "Informe o preço do filme:"
movie_price = gets.chomp.to_f

# 1 - Concatenação e exibição dos valores:
# precisa deixar explicita que é tipo string para poder concatenar

# puts "Nome do filme: " + name
# puts "Ano do filme: " + movie_year.to_s
# puts "Preço do filme: " + movie_price.to_s

# 2 - Utilizando formatação #{}
# não precisa deixar explícito

# puts "Nome do filme: #{name}"
# puts "Ano do filme: #{movie_year}"
# puts "Preço do filme: #{movie_price}"

# 3 - em um único puts

# puts "Nome do filme: #{name}\nAno do filme: #{movie_year}\nPreço do filme: #{movie_price}"

# 4 - multiline string

puts <<~MULTILINE_STRING
  puts "Nome do filme: #{name}"
  puts "Ano do filme: #{movie_year}"
  puts "Preço do filme: #{movie_price}"
MULTILINE_STRING