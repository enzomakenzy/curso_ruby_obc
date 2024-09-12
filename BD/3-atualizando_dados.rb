require 'pg'

# 1 - Configurações de conexão do BD

conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '123456',
  host: 'localhost',
  port: 5432
)

id_registro = 1

# 2 - Novos valores para jogo
new_name = 'Mortal Kombat 1'
new_year = 2023
new_score = 8.5

# 3 - Instruções SQL para atualização
update_query = "UPDATE jogo SET name = '#{new_name}', year = #{new_year}, score = #{new_score} WHERE id = #{id_registro}"

conn.exec(update_query)

puts "Registros atualizados com sucesso!"

conn.close