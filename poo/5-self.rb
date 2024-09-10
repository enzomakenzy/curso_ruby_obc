=begin
  A palavra chave self no contexto do código fornecido refere-se à instância atual da classe Game. 
  Ela pode ser usada para se referir a métodos ou variáveis de instância.

  Quando ela é utilizada de forma solta na classe, self vai se referir ao nome da própria classe.

  Quando é referida dentro de um método, se tiver um to_s, irá escrever o que tem nele. 
=end

class Game 

  puts "Uma nova instânca da classe #{self} foi criada"

  def initialize

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

  def details 
    puts "Detalhes do jogo: #{self}"
  end
end

game = Game.new
game.details