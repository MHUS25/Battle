feature 'Game over' do
  context 'player dies' do
    scenario 'Jill kills Jack' do
      sign_in_and_play
      super_attack
      expect(page).to have_content 'Jack is dead - GAME OVER!'
    end
  end

  scenario 'Play again' do
    sign_in_and_play
    super_attack
    expect(page).to have_button 'Play again'
  end

  scenario 'Starts new game' do
    sign_in_and_play
    super_attack
    click_button 'Play again'
    expect(page).to have_content 'Sign in to play'
  end

end
