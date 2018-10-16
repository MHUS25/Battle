feature 'View hit points' do
  scenario 'See Player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Jill'
    fill_in :player_2_name, with: 'Jack'
    click_button 'Submit'
    expect(page).to have_content 'Jack: 100HP'
  end
end
