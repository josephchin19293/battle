
feature 'Enter names' do
  scenario "player one can submit name" do
    sign_in_and_play
    expect(page).to have_text("Player One: Joseph")
  end

  scenario "player two can submit name" do
    sign_in_and_play
    expect(page).to have_text("Player Two: Alex")
  end

end

feature 'Display hit points' do
  scenario "player one starts with 100 hit points" do
    sign_in_and_play
    expect(page).to have_text("Player One HP: 100")
  end

  scenario "player two starts with 100 hit points" do
    sign_in_and_play
    expect(page).to have_text("Player Two HP: 100")
  end
end

feature 'Attack button' do
  context 'Player 1s turn' do
    scenario "player one can attack player two" do
      sign_in_and_play
      click_button('Attack!')
      expect(page).to have_text("Joseph attacked Alex!")
    end

    scenario "player two's health is reduced when attacked" do
      sign_in_and_play
      click_button('Attack!')
      click_button('ok')
      expect(page).to have_text("Player Two HP: 90")
    end
  end

  context 'Player 2s turn' do
    scenario "player two can attack player one" do
      sign_in_and_play
      click_button('Attack!')
      click_button('ok')
      click_button('Attack!')
      expect(page).to have_text("Alex attacked Joseph!")
    end

    scenario "player one's health is reduced when attacked" do
      sign_in_and_play
      click_button('Attack!')
      click_button('ok')
      click_button('Attack!')
      click_button('ok')
      expect(page).to have_text("Player One HP: 90")
    end
  end


end

feature 'Switching turns' do
  context 'Seeing current turn' do
    scenario 'beginning of game' do
      sign_in_and_play
      expect(page).to have_content "Joseph's turn"
    end

    scenario 'Swaps turns after an attack' do
      sign_in_and_play
      click_button('Attack!')
      click_button('ok')
      expect(page).not_to have_content "Joseph's turn"
      expect(page).to have_content "Alex's turn"
    end
  end
end

feature 'Winning and losing' do
  scenario 'player two loses' do
    sign_in_and_play
    19.times do
      click_button('Attack!')
      click_button('ok')
    end
    expect(page).to have_content("Alex Loses")
  end
end
