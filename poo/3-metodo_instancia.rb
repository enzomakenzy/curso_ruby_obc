class Game 
  def initialize 
    puts "Uma nova de instância de game acabou de ser criada"
    
    @name = "Pes"
    @genre = "Esporte"
    @multiplayer = true
    @versions = [2018, 2019, 2020]
    @price = 100 
  end

  def information 
    puts "O jogo é do gênero #{@genre} e as suas versões são #{@versions}"
  end

  def techinal_sheet
    puts "Dados do Jogo: "
    puts "--------------"
    puts "Nome: #{@name}"
    puts "Gênero: #{@genre}"
    puts "Preço: #{@price},00 R$"
  end
end

game = Game.new 
game.information
game.techinal_sheet
