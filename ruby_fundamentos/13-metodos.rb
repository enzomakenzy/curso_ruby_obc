# 1 - método para mostrar hello world na tela
def hello
  puts "hello world"
end

# 2 - método para retornar a soma de dois números

def sum 
  puts 1 + 1
end

# 3 - método para preencher data e filme e printar log em seguida

def movie
  puts "Escolha o nome do filme"
  movie_name = gets.chomp

  puts "Ponha a data do filme"
  movie_year = gets.chomp.to_i

  puts "Digite o preço do filme"
  movie_price = gets.chomp.to_f

  puts

  puts "Nome: #{movie_name}"
  puts "Data: #{movie_year}"
  puts "Preço: #{movie_price}"
end

hello

sum 

movie 