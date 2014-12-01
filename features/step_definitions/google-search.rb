require 'watir-webdriver'
$browser = Watir::Browser.new :chrome

Given(/^I have navigated my web browser to www\.google\.com$/) do
  $browser.goto 'http://google.com/'
end

When(/^I search for 'kraftwerk'$/) do
  $browser.text_field(:name => 'q').set "kraftwerk"
  $browser.button.click
end

Then(/^I should find a link for kraftwerks homepage$/) do
  assert $browser.link(:href=>'http://www.kraftwerk.com/').when_present.exist?
end

When(/^I click the Kraftwerk Homepage link$/) do
  $browser.link(:href=>'http://www.kraftwerk.com/').click
end

Then(/^I should be taken to the homepage$/) do
  assert $browser.url == 'http://www.kraftwerk.com/'
end