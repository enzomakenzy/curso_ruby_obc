# 1 - Criação de arrays

movies = []
puts movies.class

movies2 = Array.new
puts movies2.class

movies_list = ["Homem-Aranha", "Star Wars"]
puts movies_list

movies_repeat = Array.new(2, "Indiana Jones")
puts movies_repeat

# 2 - Criando um array de 0 a 4 e exponenciado eles a 2

numbers = Array.new(5) { |x| x ** 2 }
puts numbers

# 3 - Array de Números 
num = Array.[](1, 2, 3)
puts num 

num2 = Array(1..5)
puts num2

# 4 - Array com múltiplos valores
multi = ["Homem-Aranha", 2, 4.0, true]
puts multi

# 5 - Iterando itens (For, While, Each)

for mov in movies_list 
  puts mov
end

i = 0
while i < movies_list.length
  puts movies_list[i]
  i += 1
end

movies_list.each do |movie|
  puts movie
end

movies_list.each {|movie| puts movie}