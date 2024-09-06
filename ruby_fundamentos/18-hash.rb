# 1 - Criando um Hash
mov = Hash.new
puts mov.class

movie = { "name" => "Avatar", "year" => "2022" }
puts movie

movie2 = { :name => "Vingadores", :year => "2012"}
puts movie2

# iterando valores (for, while, each)

puts movie.keys
puts movie2.values

for key, value in movie2
  puts "#{key} - #{value}"
end

puts "-----------"

i = 0
while i < movie2.length
  puts "#{movie2.keys[i]} - #{movie2.values[i]}"
  i += 1
end

puts "-----------"

movie2.each {|key, value| puts "#{key}, #{value}"}
