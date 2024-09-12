require 'active_record'

# 1 - Configuração de um BD
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'postgres',
  password: '123456',
  database: 'estoque'
)

ActiveRecord::Schema.define do
  create_table :categories do |t|
    t.string :name
  end

  create_table :products do |t|
    t.string :name
    t.integer :category_id
    t.integer :stock_quantity, default: 0
  end
end

class Category < ActiveRecord::Base
  has_many :products
end

class Product < ActiveRecord::Base
  belongs_to :category

  def decrease_stock(amount)
    if self.stock_quantity >= amount
      self.stock_quantity -= amount
      self.save
    else 
      puts "Não há estoque suficiente para realiar a operação"
    end
  end

  def increase_stock(amount)
    self.stock_quantity += amount
    self.save
  end
end

category = Category.create(name: "Eletrônico")

product1 = category.products.create(name: "Iphone", stock_quantity: 5)
product2 = category.products.create(name: "Samsung Galaxy", stock_quantity: 10)

product1.decrease_stock(3)
product2.increase_stock(5)

all_products = Product.all

all_products.each do |product|
  puts "Nome: #{product.name}, Categoria: #{product.category.name}, Quantidade em Estoque: #{product.stock_quantity}"
end