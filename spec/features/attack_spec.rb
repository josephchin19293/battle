feature 'Attack player' do
  scenario 'Player 1 attacks and confirms' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Tyrion Lannister attacked Cersei Lannister"
  end

  scenario 'Attack reduces player 2 hp by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).not_to have_content "Cersei Lannister: 100 HP"
    expect(page).to have_content "Cersei Lannister: 90 HP"
  end

  scenario 'After switch turn - Player 2 attacks and confirms' do
    sign_in_and_play
    click_button("Attack")
    click_button('OK')
    click_button("Attack")
    expect(page).to have_content "Cersei Lannister attacked Tyrion Lannister"
  end

  scenario 'After switch turn - Attack reduces player 1 hp by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    click_button('Attack')
    click_button('OK')
    expect(page).not_to have_content "Tyrion Lannister: 100 HP"
    expect(page).to have_content "Tyrion Lannister: 90 HP"
  end
end
