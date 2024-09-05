puts "Digite o primeiro número"
n1 = gets.chomp.to_i

puts "Digite o segundo número"
n2 = gets.chomp.to_i

puts 

# Operadores básicos

soma = n1 + n2
sub = n1 - n2
mult = n1 * n2
div = n1 / n2
mod = n1 % n2
exp = n1 ** n2

puts soma, sub, mult, div, mod, exp

puts 

# Operadores de atribuição

puts n1 += 1
puts n1 -= 1
puts n1 *= 1
puts n2 /= 1 

# Atribuição paralela

a, b = 2, 4
a, b = b, a
puts a, b 

# 4 - Operadores de comparação

bigger = n1 > n2
smaller = n1 < n2
equal = n1 == n2
different = n1 != n2
bigger_equal = n1 >= n2
smaller_equal = n1 <= n2

# 5 - Operadores lógicos

puts ((2 > 3) and (3 > 1))
puts ((2 > 3) or (3 > 1))

# 6 - Operador especial ..

print (1..5).to_a
print ("a".."z").to_a

# 7 - Operadores binary left shift

name = ""
name << "Fulano"
name << "Sicrano"