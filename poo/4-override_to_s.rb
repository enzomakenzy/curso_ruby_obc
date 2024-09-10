class Game 
  def initialize
    puts "Uma nova instânca de Game foi criada"

    @name = "Pes"
    @genre = "Esporte"
    @multiplayer = true
    @versions = [2018, 2019, 2020]
    @price = 100
  end

  def information 
    puts "O gênero do jogo é #{@genre} e as suas versões são #{@price}"
  end

  def techinal_sheet 
    puts "Dados do Jogo: "
    puts "---------------"
    puts "Nome: #{@name}"
    puts "Gênero: #{@genre}"
    puts "Preço: #{@price}"
  end

  def to_s
    "#{@name}-#{@genre}-#{@multiplayer}-#{@price}-#{@versions}"
  end
end

game = Game.new
puts game #no canto de mostrar o canto que está guardado na memória, ele mostra justamente o conteúdo que está guardado nela graças ao método to_s