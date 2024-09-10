# Método protegido:
# Os métodos podem ser chamados a partir de instâncias da mesma classe onde foram definidos. 
# Ou em suas subclasses
class Game 
  attr_accessor :name, :genre, :price   
  attr_reader :multiplayer, :versions

  def initialize(name, genre, price, multiplayer, versions)
    @name = name
    @genre = genre
    @price = price
    @multiplayer = multiplayer
    @versions = versions
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

  # Método protegido
  protected

  def aply_discount(discount_percentage)
    @price -= (@price * discount_percentage / 100)
  end

end

game1 = Game.new("Fifa", "Esporte", 100, true, [2018, 2019, 2020])
game1.techinal_sheet
game1.send(:aply_discount, 20)
puts game1.price