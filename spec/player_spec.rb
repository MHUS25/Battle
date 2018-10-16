require 'player'

describe Player do
  subject(:jill) { Player.new('Jill') }

  describe '#name' do
    it 'returns the name' do
      expect(jill.name).to eq 'Jill'
    end
  end
end
