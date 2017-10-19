require './lib/board'

class Game
  # def initialize(board_class = Board)  # here if nothing is passed in the Board will be passed in and L6 board_class will be board
  #   @board_class = board_class # if you pass in a board_class it acts as if it would do
  #   @board = board_class.new
  # end

  def initialize(board = Board.new)
    @board = board
  end

  def gamegrid(board)
    @board.grid
  end
end
