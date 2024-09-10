class Game 
  #attr_reader :name, :genre, :price   apenas leitura (get)
  #attr_writer :name, :genre, :price   apenas sobescrita (set)
  attr_accessor :name, :genre, :price   # leitura e sobescrita

  def initialize

    @name = "Pes"
    @genre = "Esporte"
    @multiplayer = true
    @versions = [2018, 2019, 2020]
    @price = 100
  end

  def to_s
    "#{@name}-#{@genre}-#{@multiplayer}-#{@price}-#{@versions}"
  end

end

game = Game.new

puts game.name
game.name = "Fifa"
puts game.name
puts game.price
game.price = "200"
puts game.price