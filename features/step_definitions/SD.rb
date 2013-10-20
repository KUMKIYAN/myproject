Given(/^I am chase student Loan Home Page$/) do
  visit Homepage
end

When(/^I search for "(.*?)"$/) do |arg1|
  on(Homepage).search(arg1)
end

Then(/^I click a link in search landing page$/) do
  search_term = on(SearchResultsPage).search_term_links.sample
  puts search_term
  search_term = 'Student Loans Budget Calculator'
  puts search_term
  on(SearchResultsPage).click_search_term(search_term)
  sleep 20
end