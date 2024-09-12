require 'pg'

# Configurações de conexão do BD

conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '123456',
  host: 'localhost',
  port: 5432
)

# 2 - Consulta SQL

query = 'SELECT * FROM jogo'

begin
  result = conn.exec(query)
  # Itera as linhas do resultado
  result.each do |row|
    puts "ID: #{row[ 'id' ]} - Nome: #{row[ 'name' ]} - Ano: #{row[ 'year' ]} - Pontos: #{row[ 'score' ]}"
  end
ensure
  conn.close if conn
end
