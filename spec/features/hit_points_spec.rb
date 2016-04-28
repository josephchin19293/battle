feature 'Hit points' do
  scenario 'see hit points for first player' do
    sign_in_and_play
    expect(page).to have_content 'Tyrion Lannister: 100 HP'
  end

  scenario 'see hit points for second player' do
    sign_in_and_play
    expect(page).to have_content 'Cersei Lannister: 100 HP'
  end
end
