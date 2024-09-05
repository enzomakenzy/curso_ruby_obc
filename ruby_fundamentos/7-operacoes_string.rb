description = "O filme trata de uma viagem no tempo"

# 1 - Indexação

puts description[0]
puts description[-1]
puts description[5]
puts description[0,4] # pega do 0 ate o 3, excluindo o 4
puts description[0..4] # esse sim pega do 0 ate o 4
puts description.slice(0) # o método .slice funciona igual ao de cima
puts description.slice(0..4)

# 2 - Quebrando uma string

print description.split() #pega todos os espaços como referência e transforma as palavras em um array
puts
print description.split("uma") # aqui estamos excluindo a palavra "uma"
puts

# 3 - Quebrando em textos

print description.chars 
puts

# 4 - Contar ocorrência de caracteres 

puts description.count("a")

# 5 - Deixando em maiusculas ou minusculas

puts description.upcase
puts description.downcase
puts description.capitalize
puts description.swapcase
puts description.chop # remove o ultimo caractere

# 6 - Verifica o indice
 
puts description.index("viagem")

# 7 - Alterar palavras

puts description.gsub("tempo", "espaço")

# 8 - Outras operações

puts "Ruby".center(20, "-")
puts "=" * 20
puts description.include?("filme") # tem a palavra "filme" dentro?

# 9 - remover espaços em branco

puts "     Ruby".lstrip
puts "Ruby     ".rstrip
puts "   Ruby  ".strip