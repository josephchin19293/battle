feature 'Stab player' do
  scenario 'Player 1 Stabs and confirms' do
    sign_in_and_play
    click_button('Stab')
    expect(page).to have_content "Tyrion Lannister stabbed Cersei Lannister"
  end

  scenario 'Stab reduces player 2 hp by 10' do
    sign_in_and_play
    click_button('Stab')
    click_button('OK')
    expect(page).not_to have_content "Cersei Lannister: 100 HP"
    expect(page).to have_content "Cersei Lannister: 70 HP"
  end

  scenario 'After switch turn - Player 2 stabs and confirms' do
    sign_in_and_play
    click_button("Stab")
    click_button('OK')
    click_button("Stab")
    expect(page).to have_content "Cersei Lannister stabbed Tyrion Lannister"
  end

  scenario 'After switch turn - Stab reduces player 1 hp by 10' do
    sign_in_and_play
    click_button('Stab')
    click_button('OK')
    click_button('Stab')
    click_button('OK')
    expect(page).not_to have_content "Tyrion Lannister: 100 HP"
    expect(page).to have_content "Tyrion Lannister: 70 HP"
  end
end
