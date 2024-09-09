# 1 - Diretório atual
puts Dir.pwd

# 2 - Criar diretório
# Dir.mkdir "teste"

# 3 - Listar arquivos e pastas do diretório atual
puts Dir.glob "*"

# ou 

Dir.glob("*") do |file|
  puts file
end

# 4 - Lista apenas arquivos rb
puts Dir.glob "*.rb"

# 5 - Navegando entre diretórios

Dir.chdir "data"
puts Dir.pwd
puts Dir.glob "*"