feature "Switching turns" do
  before { sign_in_and_play }

  scenario "player 1's turn" do
    expect(page).to have_content("Tyrion Lannister's Turn")
  end

  scenario "player 1 has attacked" do
    click_button("Attack")
    click_button("OK")
    expect(page).to have_content("Cersei Lannister's Turn")
  end
end