feature 'Attack' do

  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Jill attacked Jack'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Jack attacked Jill'
  end

  scenario 'reduce Player 2 HP by 0' do
    allow_any_instance_of(Player).to receive(:rand_points).and_return(0)
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_content 'Jack: 100HP'
  end

  scenario 'reduce Player 1 HP by 0' do
    allow_any_instance_of(Player).to receive(:rand_points).and_return(0)
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).to have_content 'Jill: 100HP'
  end

  scenario 'reduce Player 2 HP by 10' do
    allow_any_instance_of(Player).to receive(:rand_points).and_return(10)
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Jack: 100HP'
    expect(page).to have_content 'Jack: 90HP'
  end

  scenario 'reduce Player 1 HP by 10' do
    allow_any_instance_of(Player).to receive(:rand_points).and_return(10)
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content 'Jill: 100HP'
    expect(page).to have_content 'Jill: 90HP'
  end

  scenario 'reduce Player 2 HP by 20' do
    allow_any_instance_of(Player).to receive(:rand_points).and_return(20)
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Jack: 100HP'
    expect(page).to have_content 'Jack: 80HP'
  end

  scenario 'reduce Player 1 HP by 20' do
    allow_any_instance_of(Player).to receive(:rand_points).and_return(20)
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content 'Jill: 100HP'
    expect(page).to have_content 'Jill: 80HP'
  end

  scenario 'reduce Player 2 HP by 50' do
    allow_any_instance_of(Player).to receive(:rand_points).and_return(50)
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Jack: 100HP'
    expect(page).to have_content 'Jack: 50HP'
  end

  scenario 'reduce Player 1 HP by 50' do
    allow_any_instance_of(Player).to receive(:rand_points).and_return(50)
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content 'Jill: 100HP'
    expect(page).to have_content 'Jill: 50HP'
  end

end
