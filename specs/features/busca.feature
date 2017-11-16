# language: pt
Funcionalidade: Busca

  Feature de busca de filmes com base na api do omdb


  Contexto:
    Dado que estou na home

  Cenário: Realizar uma busca por um filme
    Quando realizar a buscar por um filme
    Então devo visualizar o resultado da busca

  Cenário: Realizar uma buscar por um filme por título e ano de lançameto
    Quando realizar a busca por título e ano
    Então devo visualizar o resultado da busca

  @reinstall
  Cenário: Ao realizar uma busca por um filme que não existe, devo visualizar uma mensagem de erro
    Quando realizar a busca por um filme inexistente
    Então devo visualizar a mensagem de erro "filme não encontrado"

  @reinstall
  Cenário: Tentar realizar uma busca por um filme sem título, devo visualizar uma mensagem de erro
    Quando inserir o ano para a buscar
    Entao devo visualizar a mensagem de erro "campo título obrigatório"
