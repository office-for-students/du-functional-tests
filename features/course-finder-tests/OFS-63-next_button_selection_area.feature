Feature: Course Finder Next button selection area test
As a user
I should not be able to select Next outside button area

Scenario Outline: Course Finder Next button selection area does not extend to the right
    Given I open the url <course_finder_choose_country_page_url>
    And   The cookies have been accepted
    When  I click on the element ".course-finder-content__next-button" with offset 200,0
    Then  I expect that the url is not <course_finder_mode_study_page_url>
    And   I expect that the url is <course_finder_choose_country_page_url>

    Examples: Prod and Pre-prod URLs
  | course_finder_choose_country_page_url                                                               | course_finder_mode_study_page_url                                                                 | wait_time  |
  | "http://0.0.0.0:8000/search-landing-page/course-finder-choose-country/"                             | "http://0.0.0.0:8000/search-landing-page/course-finder-mode-study/"                               | 1000       |
  | "https://pre-prod-discover-uni.azurewebsites.net/search-landing-page/course-finder-choose-country/" | "https://pre-prod-discover-uni.azurewebsites.net/search-landing-page/course-finder-mode-study/"   | 3000       |
  | "https://discoveruni.gov.uk/search-landing-page/course-finder-choose-country/"                      | "https://discoveruni.gov.uk/search-landing-page/course-finder-mode-study/"                        | 3000       |
