def sign_in_and_play
  visit ("/")
  fill_in :player_1_name, with: 'Ant'
  fill_in :player_2_name, with: 'Elephant'
  click_button 'Submit'
end
