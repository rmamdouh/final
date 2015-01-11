# Add a declarative step here for populating the DB with sales.

Given /the following sales exist/ do |sales_table|
  sales_table.hashes.each do |sale|
    sale.create(sale)
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that sale to the database here.
  end
  #flunk "Unimplemented"
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #page.body.include?(/#{e2}.*#{e1}/.to_s)
  sales_list = page.all("table#sales tbody tr td[1]").map {|t| t.text}
  assert sales_list.index(e1) < sales_list.index(e2)
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  #flunk "Unimplemented"
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following citys: PG, G, R"
#  "When I check the following citys: G"

When /I (un)?check the following citys: (.*)/ do |uncheck, city_list|
  if (uncheck == "un")
    city_list.split(', ').each do |city|
	uncheck("cities_#{city}")
    end
  else
    city_list.split(', ').each do |city|
	check("cities_#{city}")
    end
  end
  # HINT: use String#split to split up the city_list, then
  #   iterate over the citys and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  #flunk "Unimplemented"
end

Then /I should see all the sales/ do
  rows = page.all("table#sales tbody tr td[1]")
  assert rows.count == sale.all.count
  # Make sure that all the sales in the app are visible in the table
  #flunk "Unimplemented"
end
