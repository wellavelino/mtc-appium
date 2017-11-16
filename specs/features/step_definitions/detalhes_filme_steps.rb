Quando(/^entrar nos detalhes do filme$/) do
  find_element(:id, 'movie').click
end

Então(/^devo visualizar os detalhes do filme selecionado$/) do
  find_element(:id, 'title').displayed?
  find_element(:id, 'subtitle').displayed?
end

Quando(/^favoritar o filme detalhado$/) do
  wait { find_element(:id, 'favorite').click }
end

Então(/^devo visualizar o filme na lista de favoritos$/) do
  movie_searched = find_element(:id, 'title').text

  find_element(:xpath, "//*[@content-desc='voltar']").click
  find_element(:xpath, "//*[@text='FAVORITOS']").click
  find_element(:xpath, "//*[@text='#{movie_searched}']")
end