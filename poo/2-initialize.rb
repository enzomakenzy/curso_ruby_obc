class Game 
  def initialize 
    puts "Uma nova instância de Game foi criada"

    @name = "Pes"
    @genre = "Esporte"
    @multiplayer = true
    @versions = [2018, 2019, 2020]
    @price = 100
  end
end

game1 = Game.new
p game1 