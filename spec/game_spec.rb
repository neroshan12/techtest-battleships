require 'game'
require 'board'
require 'ship'
require 'player'

describe Game do
  # subject(:game) {described_class.new(board_class)}     # game is instantiated with a fake board_class object that acts like a board
  # let(:board_class) {double :board_class, new: board }  # here the double is saying that this fake class board_class which will act like a board will respond to the new method
  # let(:board) {double :board}                           # and that board will act like a board
  # =====================================================
# it 'returns a board' do
#     board_class = double('board_class')           # a double is created to be a placeholder for board as we need a object to behave like it but not be it
#     allow(board_class).to receive(:grid).and_return([[0,0,0,0,0,0,0,0,0,0],   #we are providing this fake object something to respond to a .grid method with the specified array
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0]
#                                                    ])
#     player_class = double('player_class')
#     game = Game.new(board_class, player_class)
#     expect(game.return_board).to eq([[0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0],
#                                                    [0,0,0,0,0,0,0,0,0,0]
#                                                    ])
# end
# board = Board.new
# player = Player.new('Player 1')
# subject(:game) {described_class.new(board, player)}
  #
  before (:each) do

  end

  context '#initialize' do
    it 'initializes a new game' do
      board_class = double('board_class')
        player_class = double('player_class')
        game = Game.new(board_class, player_class)
      expect(game).to be_instance_of(Game)
    end

    it 'initializes with a new empty grid' do
      board_class = double('board_class')
      player_class = double('player_class')
      game = Game.new(board_class, player_class)
      allow(board_class).to receive(:grid).and_return([[0,0,0,0,0,0,0,0,0,0],
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
      # player_class = double('player_class')
      expect(game.gamegrid).to eq([[0,0,0,0,0,0,0,0,0,0],
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
    it 'initializes with a new player' do
      board_class = double('board_class')
      player_class = double('player_class')
      game = Game.new(board_class, player_class)
      allow(player_class).to receive(:name).and_return('Player 1')
      expect(game.player.name).to eq('Player 1')
    end
  end

  context '#placing a ship' do
    it 'allows a user to place a ship on the grid' do
      board_class = double('board_class')
      player_class = double('player_class')
      allow(board_class).to receive(:grid).and_return([[0,0,0,0,0,0,0,0,0,0],
                                                 [3,3,3,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0],
                                                 [0,0,0,0,0,0,0,0,0,0]
                                                 ])
      game = Game.new(board_class, player_class)
      ship = Ship.new
      game.place_ship( 1, 2, 3, 'h')
      expect(game.gamegrid).to eq([[0,0,0,0,0,0,0,0,0,0],
                                                 [3,3,3,0,0,0,0,0,0,0],
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
end
