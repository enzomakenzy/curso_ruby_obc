puts "Informe o primeiro nome pro email: "
name = gets.chomp
puts "Informe um segundo nome para o email: "
lastname = gets.chomp
puts "Informe o nome da sua compania: "
company = gets.chomp

puts
email = ""
email << name.downcase.split.join(".") # downcase deixa minúsculas, split separa as palavras, join une dnv so que separado por "."
email << "."
email << lastname.downcase.split.join(".")
email << "@"
email << company.downcase.split.join
email << ".com"
puts email