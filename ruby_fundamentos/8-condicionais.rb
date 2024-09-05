puts "Digite o nome do filme"
name = gets.chomp

puts "Digite o ano do filme"
year = gets.chomp.to_i

puts "Digite a nota do filme"
classification = gets.chomp.to_f

if classification > 8 && year > 2015
  puts "O filme #{name} é muito bom, recomendo esse filme!"
else 
  puts "O filme #{name} não atingiu uma nota muito boa, não recomendo"
end