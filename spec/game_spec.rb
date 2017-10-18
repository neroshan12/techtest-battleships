require 'game'

describe Game do
  subject(:game) {described_class.new}

  context '#initialize' do
    it 'initializes a new game' do
      expect(game).to be_instance_of(Game)
    end
  end
end
