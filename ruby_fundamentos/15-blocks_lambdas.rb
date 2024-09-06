# 1 - blocks
# Blocks são trechos anônimos de código que aceitam entradas de argumentos e retornam um determinado valor

def hello
  yield
end

hello { puts "é isso ai" }
hello { puts "é isso ai mais uma vez" }

def one_two_three
  yield 1
  yield 2
  yield 3
end

one_two_three { |number| puts number * 10 } # usa o parâmetro que foi deixado no yield

# 2 - lambdas

# lambda para devolver a potência de um número:
power = lambda { |number| number ** 2 }
puts power.call(8)

# lambda para verificar se o número informado é par ou ímpar:

puts "Digite um número para verificar se ele é par ou ímpar"
number = gets.chomp.to_i

even_or_odd = lambda { |number| number % 2 == 0 }

if even_or_odd.call(number)
  puts "O número #{number} é par"
else 
  puts "O número #{number} é ímpar"
end

# lambda para dividir um número pelo outro

div_num = lambda { |number1, number2| number1 / number2 }
puts div_num.call(10, 5)