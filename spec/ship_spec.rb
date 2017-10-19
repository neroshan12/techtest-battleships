describe Ship do
  context '#initializes with a ship size' do
    it 'creates a ship of size 3' do
      ship = Ship.new
      expect(ship.size).to eq(3)
    end
  end  
end
