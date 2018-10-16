require 'player'

describe Player do
  subject(:jill) { Player.new('Jill') }
  subject(:jack) { Player.new('Jack') }

  describe '#name' do
    it 'returns the name' do
      expect(jill.name).to eq 'Jill'
    end
  end

  describe '#hit_points' do
   it 'returns the hit points' do
     expect(jill.hit_points).to eq described_class::DEFAULT_HIT_POINTS
   end
 end

 describe '#attack' do
    it 'damages the player' do
      expect(jack).to receive(:receive_damage)
      jill.attack(jack)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { jill.receive_damage }.to change { jill.hit_points }.by(-10)
    end
  end

end
