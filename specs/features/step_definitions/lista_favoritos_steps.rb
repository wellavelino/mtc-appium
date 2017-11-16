Então(/^devo visualizar o filme adicionado com sucesso na lista de favoritos$/) do
  @page = ListaFavoritosScreen.new
  fail 'Movie not favorited' unless @page.movie_favorited?
end