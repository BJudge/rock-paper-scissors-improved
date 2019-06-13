feature 'user registers' do
  scenario 'user fills in name' do
    visit '/'
    fill_in "player_1_name", with: "Bart"
    click_button "Submit"
    expect(page).to have_content "Welcome Bart"
  end
end
