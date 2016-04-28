feature 'Attack player' do
  scenario 'Attacks player and confirms' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Tyrion Lannister attacked Cersei Lannister"
  end

  scenario 'Attack reduces hp by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button 'OK'
    expect(page).not_to have_content "Cersei Lannister: 100 HP"
    expect(page).to have_content "Cersei Lannister: 90 HP"
  end
end
