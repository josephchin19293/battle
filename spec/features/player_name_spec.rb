feature 'Enter names' do 
	scenario 'submitting names' do
		fill_in('name1', with: 'Joseph')
		fill_in('name2', with: 'Fergus')
		expect(page).to have_content?('Welcome, Joseph and Fergus')
	end
end