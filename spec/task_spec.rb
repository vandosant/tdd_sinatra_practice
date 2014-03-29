require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature "task management" do
  scenario "user is able to create a task" do
    visit '/'

    expect(page).to have_content("welcome")

    click_link "Add a Task"
    fill_in "new_task", with: "buy milk"
    click_on "Create Task"

    expect(page).to have_content("buy milk")
  end
end