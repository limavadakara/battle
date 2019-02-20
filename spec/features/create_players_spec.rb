feature 'Entering Players' do
  scenario 'Can display button on homepage' do
    visit ("/")
    fill_in :player_1_name, with: 'Ant'
    fill_in :player_2_name, with: 'Elephant'
    click_button 'Submit'
    expect(page).to have_content 'Ant vs. Elephant'
  end
end
