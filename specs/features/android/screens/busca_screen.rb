class BuscaScreen < BaseScreen

# Declare todos os elementos da tela
  identificator(:trait) { 'home_omdb' }
  identificator(:search_title_field) { 'search_title' }
  identificator(:search_button) { 'search' }
  identificator(:year_field) { 'year' }
  identificator(:favorite_button) { 'favorite' }
  identificator(:movie_list) { 'movie' }
  identificator(:favorite_title) { 'title' }


  def search_movie_by_title(title)
    find_element(:id, search_title_field).send_keys(title)
  end

  def touch_search_button
    find_element(:id, search_button).click
  end

  def enter_year(year)
    find_element(:id, year_field).send_keys(year)
  end

  def favorite_movie
    @movie = find_element(:id, favorite_title).text
    find_elements(:id, favorite_button).first.click
  end

  def movie_displayed?
    wait { find_element(:id, movie_list).displayed? }
  end

end
