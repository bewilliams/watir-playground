Feature: Google Search
  In order to find information
  As a normal person
  I want to be able to find information with a simple search query

  Scenario: Find Kraftwerk's homepage
    Given I have navigated my web browser to www.google.com
    When I search for 'kraftwerk'
    Then I should find a link for kraftwerks homepage
    When I click the Kraftwerk Homepage link
    Then I should be taken to the homepage