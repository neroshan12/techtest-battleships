require './lib/board'
require './lib/player'
require './lib/ship'

class Game
  # def initialize(board_class = Board)  # here if nothing is passed in the Board will be passed in and L6 board_class will be board
  #   @board_class = board_class # if you pass in a board_class it acts as if it would do
  #   @board = board_class.new
  # end

   attr_reader :player

  def initialize(board = Board.new, player = Player.new())
    @board = board
    @player = player
  end

  def gamegrid(board)
    @board.grid
  end

  def place_ship(x, y, size, h_or_v)

    i = 0
    xco = x - 1
    yco = y - 1

    if h_or_v == 'h'
      while (i < size) do
        @board.grid[yco][xco] = 3
        xco = xco + 1
        i = i + 1
      end

    elsif h_or_v == 'v'
      while (i < size) do
        @board.grid[yco][xco] = 3
        yco = yco + 1
        i = i + 1
      end

    else
      return 'Invalid entry'
    end

  end
end
