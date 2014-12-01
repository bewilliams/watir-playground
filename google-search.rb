require 'watir-webdriver'

browser = Watir::Browser.new :chrome
browser.goto 'http://google.com/'
browser.text_field(:name => 'q').set "peanuts"
browser.button.click