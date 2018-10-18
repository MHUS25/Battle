feature 'Game over' do
  before do
    allow_any_instance_of(Player).to receive(:rand_points).and_return(100)
    sign_in_and_play
    attack_and_confirm
  end

    context 'when Player 1 reaches 0 HP first' do
      scenario 'Player 1 loses' do
        expect(page).to have_content 'Jack loses - GAME OVER!'
      end
    end

    scenario 'Can play again' do
      expect(page).to have_button 'Play again'
    end

    scenario 'Can start a new game' do
      click_button 'Play again'
      expect(page).to have_content 'Sign in to play'
    end
end
