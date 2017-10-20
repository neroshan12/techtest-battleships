require 'ship'

describe Ship do

  subject(:ship) {described_class.new}

  context '#initializes with a ship size' do
    it 'creates a ship of size 3' do
      expect(ship.size).to eq(3)
    end
  end
  
end
