Feature: add book to cart
  As a user
  I want to add book to cart

  Scenario:
    Given There is a book and I am signed in user
    When I visit book detail page
    Then I click in add book to cart button
    Then I visit my cart page
    And I saw the book added to my cart