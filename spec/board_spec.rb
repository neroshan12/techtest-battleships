require 'board'

describe Board do
  subject(:board) {described_class.new}

  context '#initialize' do
    it "allows a board to be initialized" do
      expect(board).to be_instance_of(Board)
    end

    it "initializes with a 10x10 grid" do
      expect(board.grid).to eq([[0,0,0,0,0,0,0,0,0,0],
                                [0,0,0,0,0,0,0,0,0,0],
                                [0,0,0,0,0,0,0,0,0,0],
                                [0,0,0,0,0,0,0,0,0,0],
                                [0,0,0,0,0,0,0,0,0,0],
                                [0,0,0,0,0,0,0,0,0,0],
                                [0,0,0,0,0,0,0,0,0,0],
                                [0,0,0,0,0,0,0,0,0,0],
                                [0,0,0,0,0,0,0,0,0,0],
                                [0,0,0,0,0,0,0,0,0,0]])
    end
  end
end
