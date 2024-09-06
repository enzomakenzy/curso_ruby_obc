movies = ["Homem-Aranha", "Indiana Jones", "Star Wars", "Vingadores"]

# 1 - Indexação e Atribuição
puts movies[0] # primeiro  
puts movies[-1] # último
puts movies[1, 2]
movies[2] = "Top Gun Maverick" # colocando esse filme no indice 2 no canto de star wars
movies << "Avatar" # adicionando mais um no fim do array
puts movies

puts "-------------"

# 2 - Métodos úteis

puts movies.length # tamanho do array
puts movies.first # traz o primeiro
puts movies.last # traz o ultimo
movies.append("Procurando Nemo") # adicionando no fim 
puts movies.sort() # ordenando os dados
puts movies.shuffle() # bagunçando os dados

puts "-----------------"

# 3 - recuperando indice e valor

movies.each_with_index{ |value, index| puts "#{index} - #{value}" }
