require 'capybara/rspec'

feature "The homepage says" do
  scenario "Welcome to the quiz" do
    visit ("/")
    expect(page).to have_content "Welcome to the quiz"
  end
end

  feature "The start quiz says" do
  scenario "Allows player to begin quiz" do
    visit ("/")
    click_button("Start quiz!")
    expect(page).to have_content "OK, let's begin! Which quiz would you like to take?"
  end
end

feature "The sports quiz page says" do
scenario "Allows player to select sports quiz" do
  visit ("/")
  click_button("Start quiz!")
  click_button("Sports quiz")
  expect(page).to have_content "Cool! From Gazza to Wazza, from Curling to Hurling, from Usain Bolt to racing Colts, we'll put your sporting knowledge to the test"
end
end
