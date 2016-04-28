def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Tyrion Lannister'
  fill_in :player_2_name, with: 'Cersei Lannister'
  click_button 'Submit'
end
