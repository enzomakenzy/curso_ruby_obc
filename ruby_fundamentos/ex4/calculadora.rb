sum = lambda do |n1, n2| 
  n1 + n2 # ruby da retorno automático
end

subt = lambda do |n1, n2|
  n1 - n2
end

mult = lambda do |n1, n2|
  n1 * n2
end

div = lambda do |n1, n2|
  n1 / n2
end

def operation(function)
  puts "Digite o primeiro número: "
  number1 = gets.chomp.to_i

  puts "Digite o segundo número: "
  number2 = gets.chomp.to_i

  result = function.call(number1, number2)
  puts "Resultado = #{result}".center(50, "-")
end

begin
  puts "Calculadora: "
  puts "a. Soma"
  puts "b. Subtração"
  puts "c. Multiplicação"
  puts "d. Divisão"
  puts "q. Fechar"
  choice = gets.chomp
  case choice
    when "a" then operation(sum)
    when "b" then operation(subt)
    when "c" then operation(mult)
    when "d" then operation(div)
  end
end while choice != "q"
