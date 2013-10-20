class SearchResultsPage
  include PageObject  
    
  image(:search,   :alt => 'go')
  links(:search_results, :class => 'searchItemLink')     
  
  def initialize_page
   image_element.when_visible
  end
  
  def search_term_links
    all_links = search_results_elements.map {|link| link.text}
    all_links.reject!{|blank| blank == ''}
  end
  
  def click_search_term(search_term)
    search_term_link = search_results_elements.find {|term| term.text == search_term} 
    search_term_link.click
  end

end
   
