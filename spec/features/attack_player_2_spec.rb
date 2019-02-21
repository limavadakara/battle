feature 'Player 1 can attack player 2' do
  scenario 'Player 1 attacks player 2 and gets a confirmation for the attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("Ant attacked Elephant!")
  end
end
