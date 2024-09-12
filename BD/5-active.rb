require 'active_record'

# 1 - Configuração de um BD
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'postgres',
  password: '123456',
  database: 'fliperama'
)

# 2 - Criação de uma tabela

ActiveRecord::Schema.define do 
  create_table :users do |t|
    t.string :nome
    t.string :email
  end
end

# 3 - Definição de um modelo 
class User < ActiveRecord::Base
end

user1 = User.new(nome: 'Fulano', email: 'fulano@email.com')
user1.save

# 4 - Recuperando os dados
users = User.all # SELECT * FROM users;

users.each do |user|
  puts "Nome: #{user.nome} - Email: #{user.email}"
end