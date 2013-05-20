When(/^I am not logged in$/) do
  # do nothing
end

When(/^I go to the login page$/) do
  visit(log_in_path)
end

When(/^I fill in a valid email and password$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^I should be taken to the posts index page$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^I should be logged in with the email I provided$/) do
    pending # express the regexp above with the code you wish you had
end

