Feature: Main page and Welsh version test
As a user
I should be able to open the Home page

Scenario Outline: Open Home page
    Given the page url is not <page_url>
    And   I open the url <page_url>
    Then  I expect that the url is <page_url>
    And   I expect that the url is not "http://google.com"

Examples: Prod and Pre-prod URLs
  | page_url                                            |
  | "https://pre-prod-discover-uni.azurewebsites.net/"  |
  | "https://discoveruni.gov.uk/"                       |
