Quando(/^entrar nos detalhes do filme$/) do
  @page = DetalhesFilmeScreen.new
  @page.check_trait

  @page.touch_movie
end

Então(/^devo visualizar os detalhes do filme selecionado$/) do
  @page.movie_details_viisble?
end

Quando(/^favoritar o filme detalhado$/) do
  @page.favorite_movie
end

Então(/^devo visualizar o filme na lista de favoritos$/) do
  fail 'Movie not favorited' unless @page.movie_favorited?
end