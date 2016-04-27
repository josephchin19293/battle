def sign_in_and_play
  visit "/"
  fill_in "player1_name", :with => "Joseph"
  fill_in "player2_name", :with => "Alex"
  click_button "Submit"
end
