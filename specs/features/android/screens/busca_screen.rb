class BuscaScreen < BaseScreen

# Declare todos os elementos da tela
  identificator(:trait) { 'home_omdb' }
  identificator(:search_title_field) { 'search_title' }
  identificator(:search_button) { 'search' }
  identificator(:year_field) { 'year' }
  identificator(:favorite_button) { 'favorite' }
  identificator(:movie_list) { 'movie' }


  def search_movie_by_title(title)
    find_element(:id, search_title_field).send_keys(title)
  end

  def touch_search_button
    find_element(:id, search_button).click
  end

  

end
