feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Jill's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content "Jill's turn"
      expect(page).to have_content "Jack's turn"
    end
  end
end
