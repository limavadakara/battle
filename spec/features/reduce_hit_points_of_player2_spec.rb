feature 'Reduce hit points of Player 2 by 10 when attacked' do
  scenario 'Reduce the hit points of player 2 by 10 points when attacked by player 1' do
    sign_in_and_play
    click_button 'Attack'
    find_by_id('player_2_details') { expect(page).to have_content("90") }
  end
end
