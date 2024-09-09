# 1 - Renomeando arquivos
File.rename("data/courses.txt", "data/files.txt")

# 2 - Excluindo arquivos

if File.exist?("data/filmes.txt")
  File.detele("data/filmes.txt")
end