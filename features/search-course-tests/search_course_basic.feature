Feature: Course Search engine test
As a user
I should be able to search university Course and get results

Scenario Outline: Search Course and land on Results page
    Given I open the url <search_page_url>
    When  The cookies have been accepted
    And   I add "french" to the inputfield "#course"
    And   I click on the element ".search-landing-page__nav-card-button"
    Then  I expect that the url is <search_results_page_url>
    And   I expect that element ".course-finder-results__heading" does exist
    And   I expect that element ".course-finder-results__heading" matches the text "Results"
    And   I expect the url to not contain "?load_error=true&error_type=1"

Examples: Prod and Pre-prod URLs
  | search_page_url                                                         | search_results_page_url                                                   |
  | "https://pre-prod-discover-uni.azurewebsites.net/search-landing-page/"  | "https://pre-prod-discover-uni.azurewebsites.net/course-finder/results/"  |
  | "https://discoveruni.gov.uk/search-landing-page/"                       | "https://discoveruni.gov.uk/course-finder/results/"                       |