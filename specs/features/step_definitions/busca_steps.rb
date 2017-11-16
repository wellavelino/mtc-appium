Dado(/^que estou na home$/) do
  diff_metric = nakal_execute("Home")
  @page = BuscaScreen.new
  @page.check_trait
end

Quando(/^realizar a buscar por um filme$/) do
  @page.search_movie_by_title('Batman')
  @page.touch_search_button
end

Quando(/^realizar a busca por um filme inexistente$/) do
  @page.search_movie_by_title('Dollynho')
  @page.touch_search_button
end

Quando(/^inserir o ano para a buscar$/) do
  @page.enter_year('2000')
end

Quando(/^favoritar o filme$/) do
  @page.favorite_movie
end

Quando(/^realizar a busca por título e ano$/) do
  @page.search_movie_by_title('Batman')
  @page.enter_year('1993')
  @page.touch_search_button
end

Então(/^devo visualizar o resultado da busca$/) do
  fail 'Movie not found' unless @page.movie_displayed?
end

Então(/^devo visualizar a mensagem de erro "([^"]*)"$/) do |message|
  message_to_search = MESSAGES[message.tr(' ', '_').to_sym]
  @page.visible!(message_to_search, type: 'text', timeout: 10)
end

