Feature: Main page and Welsh version test
As a user
I should be able to open the Home page and select Welsh language version

Scenario Outline: Select Welsh language version
    Given I open the url <page_url>
    And   the element "#language_select" is visible
    And   the element "#language_select" matches the text "Cymraeg"
    When  I click on the element "#language_select"
    Then  I expect that the url is <welsh_page_url>
    And   I expect that element "#language_select" matches the text "English"

Examples: Prod and Pre-prod URLs
  | page_url                                            | welsh_page_url                                        |
  | "https://pre-prod-discover-uni.azurewebsites.net/"  | "https://pre-prod-discover-uni.azurewebsites.net/cy/" |     
  | "https://discoveruni.gov.uk/"                       | "https://discoveruni.gov.uk/cy/"                      |