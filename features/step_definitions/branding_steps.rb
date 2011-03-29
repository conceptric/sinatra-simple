Then /^I should see my copyright statement$/ do
  page.should have_content("Conceptric 2009—#{Time.now.year}: All rights reserved")
end
