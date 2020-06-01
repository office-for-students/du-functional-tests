Feature: Course Search engine with Study Mode filter test
As a user
I should be able to search university Course with Study Mode filter and get results

Scenario Outline: Course search with Study Mode filter does not return error
    Given I open the url <search_page_url>
    When  The cookies have been accepted
    And   I add "french" to the inputfield "#course"
    And   I click on the button ".search-landing-page__nav-card-button"
    Then  I expect that the url is <search_results_page_url>
    When  I pause for <wait_time>ms
    And   I click on the element ".course-finder-results__overview-filter-toggle"
    And   I pause for <wait_time>ms
    And   I select Study Mode filter with text "Part time"
    And   I pause for <wait_time>ms
    Then  I expect that checkbox "#mode-part-time" is checked
    When  I click on the button ".filters-block__submit-btn"
    Then  I expect that element ".load-error-popup__internal-error" does not exist
    And   I expect the url to not contain "load_error=true&error_type=1"
    And   I expect that the url is <search_results_page_url>

Examples: Prod and Pre-prod URLs
  | search_page_url                                                         | search_results_page_url                                                   | wait_time  |
  | "https://pre-prod-discover-uni.azurewebsites.net/search-landing-page/"  | "https://pre-prod-discover-uni.azurewebsites.net/course-finder/results/"  | 3000       |
  | "https://discoveruni.gov.uk/search-landing-page/"                       | "https://discoveruni.gov.uk/course-finder/results/"                       | 3000       |
