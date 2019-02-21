feature 'Entering Players' do
  scenario 'Displays the player names' do
    sign_in_and_play
    expect(page).to have_content 'Ant vs. Elephant'
  end
end
