class Game 
  puts "Uma nova instânca da classe #{self} foi criada"

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

  def name 
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def genre
    @genre
  end

  def genre=(new_genre)
    @genre = new_genre
  end

  def multiplayer
    @multiplayer
  end

  def multiplayer=(new_multiplayer)
    @multiplayer = new_multiplayer
  end

  def versions
    @versions
  end

  def versions=(new_versions)
    @versions = new_versions
  end

  def price
    @price
  end

  def prince=(new_price)
    @price = new_price
  end

end

game = Game.new

puts game.name
game.name="Fifa"
puts game.name
