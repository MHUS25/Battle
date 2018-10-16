feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Jill'
    fill_in :player_2_name, with: 'Jack'
    click_button 'Submit'
    expect(page).to have_content 'Jill vs. Jack'
  end
end
