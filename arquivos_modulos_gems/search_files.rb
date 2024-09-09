# Alternativa 1, bem simples e falha
# def search(word)
#   Dir.glob("data/*.txt") do |file|
#     f = File.open(file)
#     f.each_with_index do |line, index|
#       if line.include?(word)
#         return file, index
#       end
#     end
#     f.close
#   end
# end

# Alternativa 2
def search(word)
  result = {}
  Dir.glob("data/*.txt") do |file|
    f = File.open(file)
    f.each_with_index do |line, index|
      if line.include?(word)
        result[index + 1] = file
      end
    end
    f.close
  end
  result # retorna o resultado. não precisamos colocar o "return" no ruby
end

puts "Busca Palavras em Arquivos"
puts "Digite uma palavra a ser procurada"
word = gets.chomp.capitalize

# isso aqui abaixo é dá alternativa 1
# filename, linenumber = search(word)
# puts "Arquivo: #{filename} Linha: #{linenumber + 1}"

result = search(word)
if result.length > 0
  for key, value in result
    puts "Arquivo: #{value} Linha: #{key}"
  end
else 
  puts "Não encontrado"
end