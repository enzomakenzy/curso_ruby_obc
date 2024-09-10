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

  # Método privado
  private

  def aply_discount(discount_percentage)
    @price -= (@price * discount_percentage / 100)
  end

  # Método público que chama o método privado
  public

  def aply_10_percentage_discount
    aply_discount(10)
  end
end

game1 = Game.new("Fifa", "Esporte", 100, true, [2018, 2019, 2020])
game1.techinal_sheet
game1.aply_10_percentage_discount
puts game1.price