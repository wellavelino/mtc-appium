# language: pt
Funcionalidade: ListaFavoritos

  Contexto:
    Dado que efetuei uma busca por um filme

  Cenário: Adicionar um filme na lista de favoritos
    Quando favoritar o filme
    Então devo visualizar o filme adicionado com sucesso na lista de favoritos

