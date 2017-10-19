require 'game'
require 'board'
require 'ship'

describe Game do
  # subject(:game) {described_class.new(board_class)}     # game is instantiated with a fake board_class object that acts like a board
  # let(:board_class) {double :board_class, new: board }  # here the double is saying that this fake class board_class which will act like a board will respond to the new method
  # let(:board) {double :board}                           # and that board will act like a board
board = Board.new
subject(:game) {described_class.new(board)}

  context '#initialize' do
    it 'initializes a new game' do
    #  board = Board.new
      # game = Game.new(board)
      expect(game).to be_instance_of(Game)
    end
    it 'initializes with a new empty grid' do
      # board = Board.new
      #puts game.gamegrid(board_class)
      expect(game.gamegrid(board)).to eq([[0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0]
                                                 ])
    end
  end

  context '#placing a ship' do
    it 'allows a user to place a ship on the grid' do

    end
  end
end
