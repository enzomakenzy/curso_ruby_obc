# 1 - Utilizando argumentos
# Nós passamos os argumentos no terminal. Cada vez que você der um espaçamento, será um novo argumento a ser considerado. 

# ARGV.each { |arg| puts arg }
# ARGV.each { |arg| puts arg.class }

# 2 - Potência de um número

# ARGV.each do |arg|
#   pot = arg.to_i ** 2
#   puts "A potência do número #{arg} é #{pot}"
# end

# 3 - Salvando conteúdo de argumento em arquivo 

File.open("data/games.txt", "a") do |file|
  ARGV.each do |game|
    file.puts game
  end
end
