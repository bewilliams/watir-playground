require 'watir-webdriver'

browser = Watir::Browser.new :chrome
browser.goto 'http://google.com/'
browser.text_field(:id => 'gbqfq').set "peanuts\n"