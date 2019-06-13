feature 'user visits index page' do
  scenario 'user sees welcome message' do
    visit '/'
    expect(page).to have_content "Welcome to Rock Paper Scissors"
  end
end
