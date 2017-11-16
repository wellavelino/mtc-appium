class ListaFavoritosScreen < BaseScreen

  identificator(:favorite_tab)              { 'FAVORITOS' }

  def movie_favorited?
    find_element(:xpath, "//*[@text='#{favorite_tab}']").click
    find_element(:xpath, "//*[@text='#{@movie}']")
  end
end
