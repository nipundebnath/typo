Feature: Create categories
  As a blog administrator
  In order to gift my thoughts to the world
  I want to be able to add categories to my blog
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully create and edit categories
    Given I am on the new categories page
    
    When I fill in "category_name" with "Food"
    And I fill in "category_keywords" with "Daal Vaat"
    And I fill in "category_permalink" with "GG"
    And I fill in "category_description" with "Hungry?"
    And I press "Save"

    Then I should see "Food"
    Then I should see "Daal Vaat"
    Then I should see "GG"
    Then I should see "Hungry?"
    
    Then I follow "Food"
    
    When I fill in "category_name" with "Food-1"
    And I fill in "category_keywords" with "Daal Vaat-1"
    And I fill in "category_permalink" with "GG-1"
    And I fill in "category_description" with "Hungry?-1"
    And I press "Save"

    Then I should see "Food-1"
    Then I should see "Daal Vaat-1"
    Then I should see "GG-1"
    Then I should see "Hungry?-1"