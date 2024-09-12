require 'pg'

# 1 - Configurações de conexão do BD

conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '123456',
  host: 'localhost',
  port: 5432
)

id_register = 5

# 2 - Query de exclusão
delete_query = "DELETE FROM jogo WHERE id = #{id_register}"

conn.exec(delete_query)

puts "Registro excluído"

conn.close