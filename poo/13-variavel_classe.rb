class Game 
  attr_accessor :name, :genre, :price   
  attr_reader :multiplayer, :versions

  @@num_jogos = 0

  def initialize(name, genre, price, multiplayer, versions)
    @name = name
    @genre = genre
    @price = price
    @multiplayer = multiplayer
    @versions = versions

    @@num_jogos += 1
  end

  def to_s
    "#{@name}-#{@genre}-#{@multiplayer}-#{@price}-#{@versions}"
  end

  def techinal_sheet 
    puts "Dados do Jogo: "
    puts "---------------"
    puts "Nome: #{@name}"
    puts "Gênero: #{@genre}"
    puts "Preço: #{@price}"
  end

  # Método de classe para obter número total de jogos
  def self.total_games 
    @@num_jogos
  end
end

game1 = Game.new("Fifa", "Esporte", 100, true, [2018, 2019, 2020])
game1.techinal_sheet

game2 = Game.new("League of Legens", "RPG", 0, true, [])
game2.techinal_sheet

puts "-----------"

puts "Número total de jogos: #{Game.total_games}" 