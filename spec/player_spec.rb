require 'player'

describe Player do

  subject(:player) {described_class.new('Player 1')}

  context '#initialize' do
    it 'initializes a new player' do
      expect(player).to be_instance_of(Player)
    end
  end

    it 'initializes with a player name' do
      expect(player.name).to eq('Player 1')
    end
end
