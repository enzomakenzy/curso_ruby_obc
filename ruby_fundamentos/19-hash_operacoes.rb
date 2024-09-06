movie = { :name => "Vingadores Ultimato", :year => "2019" }

# 1 - Métodos Úteis

puts movie.size
puts movie.length
puts movie.to_a # vê em array
puts movie.min # retorna o primeiro
puts movie.max # retorna o ultimo
puts movie.fetch(:name) # retorna de acordo com a key

# 2 - Adiciona Novo item 

movie.store(:genre, "Aventura")
movie.store(:rating, 5.0)
puts movie

# 3 - Deletar Item

movie.delete(:rating)
puts movie

# 4 - Limpar Hash

movie.clear()
puts movie
