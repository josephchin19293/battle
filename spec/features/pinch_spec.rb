feature 'Pinch player' do
  scenario 'Player 1 pinches and confirms' do
    sign_in_and_play
    click_button('Pinch')
    expect(page).to have_content "Tyrion Lannister pinched Cersei Lannister"
  end

  scenario 'Pinch reduces player 2 hp by 10' do
    sign_in_and_play
    click_button('Pinch')
    click_button('OK')
    expect(page).not_to have_content "Cersei Lannister: 100 HP"
    expect(page).to have_content "Cersei Lannister: 95 HP"
  end

  scenario 'After switch turn - Player 2 Pinches and confirms' do
    sign_in_and_play
    click_button("Pinch")
    click_button('OK')
    click_button("Pinch")
    expect(page).to have_content "Cersei Lannister pinched Tyrion Lannister"
  end

  scenario 'After switch turn - Pinch reduces player 1 hp by 10' do
    sign_in_and_play
    click_button('Pinch')
    click_button('OK')
    click_button('Pinch')
    click_button('OK')
    expect(page).not_to have_content "Tyrion Lannister: 100 HP"
    expect(page).to have_content "Tyrion Lannister: 95 HP"
  end
end
