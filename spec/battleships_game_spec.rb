require 'battleships_game'

describe BattleshipsGame do
  subject(:battleshipsgame) {described_class.new}

  context '#initialize' do
    it "allows a battleships game to be initialized" do
      expect(battleshipsgame).to be_instance_of(BattleshipsGame)
    end

    it "initializes with a 10x10 grid" do
      expect(battleshipsgame.board).to eq([[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0]])
    end
  end
end
