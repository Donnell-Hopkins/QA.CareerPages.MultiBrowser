Feature: Career Pages Angular 5 Tests

  Scenario: Smoke Test Career Page
    Given I am on the Career Pages site
    When I page down through the sections
    Then I should be presented a Job Listings
    When I click apply
    Then I should be presented with the job results page
    When I click the Back button
    Then I should return to the Career Page