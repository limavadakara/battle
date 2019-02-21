feature "see other players' hit point" do
  scenario 'check other player hit points' do
    sign_in_and_play
    find_by_id('player_2_details') { expect(page).to have_content("10") }
  end
end
