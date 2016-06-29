require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the palindromes? path', {:type => :feature}) do
  it('accepts a user entry and determines whether it is a palindrome') do
    visit('/')
    fill_in('entry', :with => 'racecar')
    click_button('Go')
    expect(page).to have_content('is a palindrome')
  end
end
