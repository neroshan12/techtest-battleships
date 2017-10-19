require 'player'

describe Player do
  context '#initialize' do
    it 'initializes a new player' do
      player = Player.new('Player 1')
      expect(player).to be_instance_of(Player)
    end
  end

    it 'initializes with a player name' do
      player = Player.new('Player 1')
      expect(player.name).to eq('Player 1')
    end
end
