Então(/^devo visualizar o filme adicionado com sucesso na lista de favoritos$/) do
  puts @movie
  find_element(:xpath, "//*[@text='FAVORITOS']").click
  find_element(:xpath, "//*[@text='#{@movie}']")
end