Feature: Career Pages - Display Validation

  Scenario: Standard Career Pages Display - Page Validation
    Given I am on the Career Pages site
    When I page down through the sections
    Then I should be presented a Job Listings
    Then I should be presented with the job results page
    Then I should return to the initial Career Page

