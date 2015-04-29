require('rspec')
require ("vehicle")

describe(Vehicle) do
  describe('#car_name') do
    it('ascribes a vehicle a name') do
      test_car = Vehicle.new('Honda')
      expect(test_car.car_name()).to(eq("Honda"))
    end
  end





end
