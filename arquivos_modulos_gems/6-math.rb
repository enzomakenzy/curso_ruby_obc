puts Math.class
# Existem muitos métodos que podem ser vistos com o comando abaixo:
# p Math.methods.sort

puts Math.sqrt(4)
puts Math.sqrt(5)
puts Math.sin(90)
puts Math::PI

# 1 - Calcular a área de um círculo
def calc_area_circle(raio)
  Math::PI * (raio ** 2)
end

# 2 - Calcular perimetro de um círculo 
def calc_perimet(raio)
  2 * Math::PI * raio
end

# 3 - Perguntando o raio ao usuário
puts "Informe o raio para calcularmos a área e o perímetro: "
raio = gets.chomp.to_f
area = calc_area_circle(raio)
perimet = calc_perimet(raio)

# 4 - Resultado
puts "A área do círculo é de: #{area.round(2)}"
puts "O perímetro do círculo é de: #{perimet.round(2)}"