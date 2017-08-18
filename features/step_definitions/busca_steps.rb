Dado(/^que estou na home$/) do
  find_element(:id, "home_omdb")
end

Quando(/^realizar a buscar por um filme$/) do
  find_element(:id, 'title').send_keys('Batman')
  find_element(:id, 'search').click
end

Então(/^devo visualizar o resultado da busca$/) do
  find_element(:id, 'movie').displayed?
end

Quando(/^realizar a busca por um filme inexistente$/) do
  find_element(:id, 'title').send_keys('Dollynho')
  find_element(:id, 'search').click
end

Então(/^devo visualizar a mensagem de erro "([^"]*)"$/) do |message|
  message_to_search = MESSAGES[message.tr(' ','_').to_sym]
  wait { find_element(xpath: "//android.widget.TextView[@text='#{message_to_search}']") }
end

Quando(/^inserir o ano para a buscar$/) do
  find_element(:id, 'year').send_keys('2000')
end
