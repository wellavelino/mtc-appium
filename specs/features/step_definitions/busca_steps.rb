Dado(/^que estou na home$/) do
  @page = BuscaScreen.new
  @page.check_trait
end

Quando(/^realizar a buscar por um filme$/) do
  @page.search_movie_by_title('Batman')
  @page.touch_search_button
end

Quando(/^realizar a busca por um filme inexistente$/) do
  find_element(:id, 'search_title').send_keys('Dollynho')
  find_element(:id, 'search').click
end

Quando(/^inserir o ano para a buscar$/) do
  find_element(:id, 'year').send_keys('2000')
end

Quando(/^favoritar o filme$/) do
  @movie = find_element(:id, 'title').text
  find_elements(:id, 'favorite').first.click
end

Quando(/^realizar a busca por título e ano$/) do
  find_element(:id, 'search_title').send_keys('Batman')
  find_element(:id, 'year').send_keys('1993')
  find_element(:id, 'search').click
end

Então(/^devo visualizar o resultado da busca$/) do
  wait { find_element(:id, 'movie').displayed? }
end

Então(/^devo visualizar a mensagem de erro "([^"]*)"$/) do |message|
  message_to_search = MESSAGES[message.tr(' ', '_').to_sym]
  wait { find_element(xpath: "//android.widget.TextView[@text='#{message_to_search}']") }
end

