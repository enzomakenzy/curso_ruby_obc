require 'csv'

# 1 - Escrevendo dados em CSV
CSV.open("data/arquivo.csv", "w") do |csv|
  csv << ["Nome", "Idade", "Cidade"]
  csv << ["Enzo", 21, "Mossoró"]
  csv << ["Lucas", 22, "Paris"]
  csv << ["Layza", 21, "Nova York"]
end

# 2 - Lendo dado sem CSV
CSV.foreach("data/arquivo.csv", headers: true) do |row|
  nome = row["Nome"]
  idade = row["Idade"]
  cidade = row["Cidade"]
  
  puts "Nome: #{nome}, Idade: #{idade}, Cidade: #{cidade}"
end