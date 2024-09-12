require 'pg'

# 1 - Configurações de conexão do BD

conn = PG.connect(
  dbname: 'fliperama',
  user: 'postgres',
  password: '123456',
  host: 'localhost',
  port: 5432
)

# 2 - Adicionando dados como um Array

registros = [
  {name: 'The Last of Us', year: 2023, score: 9},
  {name: 'Spider Man', year: 2023, score: 9.5}
]

# 3 - Iterando os dados do Array 

registros.each do |registro|
  name = registro[:name]
  year = registro[:year]
  score = registro[:score]

  # 4 - Cria a instrução SQL Inserção
  insert_query = "INSERT INTO jogo (name, year, score) VALUES ('#{name}', #{year}, #{score})"

  conn.exec(insert_query)
end

puts "Registros inseridos com sucesso!"
conn.close