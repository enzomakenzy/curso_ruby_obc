# Escrevendo em arquivos txt
# 1 

File.open("data/courses.txt", "w") do |file|
  file.puts "Criando arquivo de texto"
  file.write "Hello World" #naõ tem quebra de linha no arquivo
  file.puts "Olá Mundo"
  file.puts "AAAAAAAAAA"
end

# Quando damos esse comando mais uma vez, ele vai subscrever toda vez o arquivo por causa do "w"
# Para isso, temos que utilizar o "a", pq ele vai adicionar ao arquivo, e não sobscrever

File.open("data/courses.txt", "a") do |file|
  puts "Qual curso deseja fazer?"
  course = gets.chomp
  file.puts course
end
