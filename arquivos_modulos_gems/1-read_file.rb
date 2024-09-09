# Mostrando conteúdo do arquivo .txt

# 1 - Alternativa 1
movies = File.open("data/filmes.txt")
puts movies 
puts movies.class
movies.each { |movie| puts movie }

puts "-----------"

# 2 - Alternativa 2, removendo as linhas vazias do arquivo
file_path = "data/filmes.txt"
File.open(file_path, "r") do |file| # o "r" é de "read", leitura
  file.each_line { |line| puts line.strip unless line.strip.empty? }
end