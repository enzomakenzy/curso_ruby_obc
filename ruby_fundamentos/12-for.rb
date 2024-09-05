# 1 - alternativa usando somente for

# for i in 1..5
#   puts i
# end

# 2 - utilizando each

# (1..5).each do |i|
#   puts i
# end

movie_list = ["Vingadores", "Kung Fu Panda", "Gente Grande", "Segurança de Shopping", "Uma Noite no Museu"]

# iterando valores de um array
movie_list.each do |movie|
  puts movie
end

puts "----------"

# utilizando o break 
movie_list.each do |movie|
  break if movie == "Segurança de Shopping"
  puts movie
end

puts "----------"

#utilizando o next
movie_list.each do |movie|
  next if movie == "Gente Grande"
  puts movie 
end

# avaliação para o filme

puts "Digite o nome do filme: "
movie_name = gets.chomp

puts "Digite quantas avaliações você quer fazer no filme: "
movie_rating = gets.chomp.to_i

sum = 0
movie_rating.times do 
  puts "Digite uma nota para dar ao filme: "
  note = gets.chomp.to_i
  sum += note
end

average = sum / movie_rating

puts "A média das notas do filme #{movie_name} é igual a %.2f" %average