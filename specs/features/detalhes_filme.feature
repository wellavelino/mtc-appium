# language: pt
Funcionalidade: Detalhes Filme

  Cenário: Visualizar os detalhes do filme
    Dado que efetuei uma busca por um filme
    Quando entrar nos detalhes do filme
    Então devo visualizar os detalhes do filme selecionado

  Cenário: Favoritar um filme pelo atalho na tela de detalhes
    Dado que efetuei uma busca por um filme
    E entrar nos detalhes do filme
    Quando favoritar o filme detalhado
    Então devo visualizar o filme na lista de favoritos