feature "see hit points" do
  scenario 'player 1 can see player 2 hit points' do
    sign_in_and_play
    find_by_id('player_2_details') { expect(page).to have_content("100") }
  end

  scenario 'player 1 van see his own hit points' do
    sign_in_and_play
    find_by_id('player_1_details') { expect(page).to have_content("100") }
  end
end
