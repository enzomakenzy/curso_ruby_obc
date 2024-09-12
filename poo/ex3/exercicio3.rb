class Vehicle
  attr_accessor :sign, :brand

  def initialize(sign, brand)
    @sign = sign
    @brand = brand
  end

  def details 
    puts "Placa: #{@sign}"
    puts "Marca: #{@brand}"
  end
end

class Car < Vehicle
  attr_accessor :doors

  def initialize(sign, brand, doors)
    super(sign, brand)
    @doors = doors
  end

  def details
    super
    puts "Portas: #{@doors}"
  end
end

class Motocicle < Vehicle 
  attr_accessor :cilindradas

  def initialize(sign, brand, cilindradas)
    super(sign,brand)
    @cilindradas = cilindradas
  end

  def details 
    super
    puts "Cilindradas: #{@cilindradas}"
  end
end

def show_details(vehicle)
  puts vehicle.details
end

carro = Car.new("ABC123", "Toyota", 4)
moto = Motocicle.new("DEF456", "Honda", 250)

show_details(carro)
show_details(moto)