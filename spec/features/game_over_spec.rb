feature 'Game over' do
  context 'player dies' do
    scenario 'Jill kills Jack' do
      sign_in_and_play
      super_attack
      expect(page).to have_content 'Jack is dead'
    end
  end
end


  
