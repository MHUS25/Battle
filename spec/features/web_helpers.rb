def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Jill'
  fill_in :player_2_name, with: 'Jack'
  click_button 'Submit'
end

def super_attack
  19.times do click_button 'Attack'
  click_button 'OK'
  end
end
