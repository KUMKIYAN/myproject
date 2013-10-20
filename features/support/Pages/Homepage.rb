class Homepage
  include PageObject  
  page_url 'http://chase.com'
  
  text_field(:search_box,   :id => 'searchfield')
  link(:search_enter,       :id => 'swatsearchid')     
  
  def initialize_page
   search_box_element.when_visible
  end
  
  def search (search_term)
    self.search_box = search_term
    search_enter
  end
end
   
