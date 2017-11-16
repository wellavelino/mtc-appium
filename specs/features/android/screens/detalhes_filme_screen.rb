class DetalhesFilmeScreen < BaseScreen

# Declare todos os elementos da tela
  identificator(:trait) { 'title' }
  identificator(:movie_title) { 'title' }
  identificator(:movie_subtitle) { 'subtitle' }
  identificator(:movie_favorite) { 'favorite' }
  identificator(:back) { 'voltar' }
  identificator(:favorite_tab) { 'FAVORITOS' }
  identificator(:movie) { 'movie' }


  def touch_movie
    find_element(:id, movie).click
  end

  def movie_details_viisble?
    find_element(:id, movie_title).displayed?
    find_element(:id, movie_subtitle).displayed?
  end

  def favorite_movie
    wait { find_element(:id, movie_favorite).click }
  end

  def movie_favorited?
    movie_searched = find_element(:id, movie_title).text

    find_element(:xpath, "//*[@content-desc='#{back}']").click
    find_element(:xpath, "//*[@text='#{favorite_tab}']").click
    find_element(:xpath, "//*[@text='#{movie_searched}']")
  end
end
