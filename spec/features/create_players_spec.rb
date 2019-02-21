feature 'Entering Players' do
  scenario 'Can display button on homepage' do
    sign_in_and_play
    expect(page).to have_content 'Ant vs. Elephant'
  end
end
