puts "Digite o nome do filme: "
movie_name = gets.chomp
qtd_rating = 0
total_rating = 0
rating = 0 
average = 0

while rating != -1
  puts "Informe uma nota para o filme: "
  rating = gets.chomp.to_i

  if rating != -1
    total_rating += rating
    qtd_rating += 1
    average = total_rating / qtd_rating
  end
end

puts "Média das avaliações do filme '#{movie_name}': #{average}"