feature 'View hit points' do
  scenario 'See Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Jack: 100HP'
  end
end
