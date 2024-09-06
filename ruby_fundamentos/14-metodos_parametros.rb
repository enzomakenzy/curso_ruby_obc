# 1 - Método que recebe dois parâmetros de nome:

def full_name(fname, lname)
  puts "Seu nome completo é: #{fname} #{lname}"
end

full_name("Enzo", "Makenzy")

# 2 - Método para somar dois números:

def sum(number1, number2)
  return number1 + number2
end

puts sum(4, 2)

# 3 - Argumentos default(que ja vem com parâmetro preenchido caso o usuário não deixe nenhum):

def address(country = "Brasil")
  puts "Eu moro no #{country}"
end

address()
address("França")

# 4 - Método para ver a média de avaliações de um filme

def rating_movie(qtd_rating)
  puts "Qual o nome do filme?"
  movie_name = gets.chomp
  sum = 0
  for i in 1..qtd_rating
    puts "Qual nota vc dá para o filme?(1 a 10) "
    note = gets.chomp.to_i
    sum += note
  end
  puts "A média final para o filme #{movie_name} é igual a: #{sum / qtd_rating}"
end

puts "Quantas vezes quer avaliar este filme?"
rating = gets.chomp.to_i

rating_movie(rating)