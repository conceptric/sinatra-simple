Feature: Cucumber
  In order to test that Cucumber integration works
  As the developer
  I want run some boiler plate tests

  Scenario: the default new application message should show up on this page
    Given I am on the homepage
    Then I should see "A new Sinatra application" within "h1"
    And I should see my copyright statement

  
  
  
  
  
  
