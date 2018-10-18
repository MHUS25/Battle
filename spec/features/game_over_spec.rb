feature 'Game over' do
    context 'when Player 1 reaches 0 HP first' do
      scenario 'Player 1 loses' do
        allow_any_instance_of(Player).to receive(:rand_points).and_return(100)
        sign_in_and_play
        attack_and_confirm
        expect(page).to have_content 'Jack is dead - GAME OVER!'
      end
    end
    
    scenario 'Can play again' do
      allow_any_instance_of(Player).to receive(:rand_points).and_return(100)
      sign_in_and_play
      attack_and_confirm
      expect(page).to have_button 'Play again'
    end

    scenario 'Can start a new game' do
      allow_any_instance_of(Player).to receive(:rand_points).and_return(100)
      sign_in_and_play
      attack_and_confirm
      click_button 'Play again'
      expect(page).to have_content 'Sign in to play'
    end
end
