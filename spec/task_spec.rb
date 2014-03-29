require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature "task management" do
  scenario "user sees a welcome message" do
    visit '/'

    expect(page).to have_content("welcome")
  end
end