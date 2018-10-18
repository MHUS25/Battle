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

    it 'sometimes does not reduce hit points' do
      allow(jill).to receive(:rand_points).and_return(0)
      jill.receive_damage
      expect { jill.receive_damage }.to change { jill.hit_points }.by(0)
    end

    it 'sometimes reduces hit points by 10' do
      allow(jill).to receive(:rand_points).and_return(10)
      jill.receive_damage
      expect { jill.receive_damage }.to change { jill.hit_points }.by(-10)
    end

    it 'sometimes reduces hit points by 20' do
      allow(jill).to receive(:rand_points).and_return(20)
      jill.receive_damage
      expect { jill.receive_damage }.to change { jill.hit_points }.by(-20)
    end

    it 'sometimes reduces hit points by 50' do
      allow(jill).to receive(:rand_points).and_return(50)
      jill.receive_damage
      expect { jill.receive_damage }.to change { jill.hit_points }.by(-50)
    end
  end
end
