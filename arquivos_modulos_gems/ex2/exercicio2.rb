require 'csv'

puts "Adicionando dados para o arquivo: arquivo.csv"
puts "Informe um nome"
name = gets.chomp

puts "Informe uma idade"
age = gets.chomp.to_i

puts "Informe uma cidade"
city = gets.chomp

CSV.open("../data/arquivo.csv", "a") do |add|
  add << [name, age, city]
end

CSV.foreach("../data/arquivo.csv", headers: true) do |show|
  name = show["Nome"]
  age = show["Idade"]
  city = show["Cidade"]

  puts "Nome: #{name}, Idade: #{age}, Cidade: #{city}"
end