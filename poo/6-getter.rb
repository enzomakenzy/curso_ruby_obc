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

  def genre
    @genre
  end

  def multiplayer
    @multiplayer
  end

  def versions
    @versions
  end

  def price
    @price
  end
end

game = Game.new
puts game.name, game.genre, game.multiplayer, game.versions, game.price 