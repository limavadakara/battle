feature 'Switch player turns' do
  scenario 'Should switch turns for players. Start game with player 1 starting' do
    sign_in_and_play
    expect(page).to have_content("Ant's turn")
  end

  scenario 'Should switch turn from first player to second when first player has attacked' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content("Elephant's turn")
  end
end
