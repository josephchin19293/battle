feature 'Names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Tyrion Lannister vs. Cersei Lannister'
  end
end
