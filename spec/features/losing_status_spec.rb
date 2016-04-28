feature 'Status when HP is 0' do
  scenario 'Player 2 has 0 HP' do
    sign_in_and_play
    19.times {attack_and_confirm}
    expect(page).to have_content "Cersei Lannister loses!"
    expect(page).not_to have_content "Cersei Lannister's Turn"
  end
end
