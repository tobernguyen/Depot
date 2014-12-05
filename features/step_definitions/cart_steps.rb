Given(/^There is a book and I am signed in user$/) do
  @book = Book.create()
  @user = User.create
  visit '/users/sign_in'
  fill
  fill
  click button

end

When(/^I visit book detail page$/) do
  visit
end

Then(/^I click in add book to cart button$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I visit my cart page$/) do

end

Then(/^I saw the book added to my cart$/) do
  expect(current_cart.item).to
end