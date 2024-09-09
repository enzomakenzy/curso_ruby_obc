module Square
  def self.calc_area(number)
    number * number
  end
end

module Rectangle 
  def self.calc_area(base, width)
    base * width
  end
end

puts Square.calc_area(10)
puts Rectangle.calc_area(20, 30)