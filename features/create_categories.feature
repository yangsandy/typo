Feature: Create Categories
  As a blog administrator
  In order to keep every article well sorted
  I want to be able to create categories for my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the categories page
    When I fill in "category_name" with "Rants"
    And I fill in "category_description" with "<Insert description of rants category>"
    And I press "Save"
    Then I should be on the categories page
    And I should see "Category was successfully saved."
    And I should see "<Insert description of rants category>"
