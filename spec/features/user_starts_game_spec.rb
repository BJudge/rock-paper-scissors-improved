feature 'user starts game' do
  scenario 'player throws first hand' do
    visit '/'
    fill_in "player_1_name", with: "Bart"
    click_button "Submit"
    expect(page).to have_content "Welcome Bart"
    click_button "Play Game"
    fill_in 'player_choice', with: 'rock'
    click_button "Submit"
  end
end
