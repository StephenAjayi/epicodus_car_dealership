require('rspec')
require ("vehicle")

describe(Vehicle) do
  describe('#car_name') do
    it('ascribes a vehicle a name') do
      test_car = Vehicle.new('Honda', 'accord', 2012)
      expect(test_car.make()).to(eq("Honda"))
    end
  end


  describe('#car_name') do
    it('ascribes a model') do
      test_car = Vehicle.new('Honda', 'accord', 2012)
      expect(test_car.model()).to(eq('accord'))
    end
  end

  describe("#year") do
    it('returns the year of the vehicle') do
      test_car = Vehicle.new('Honda', 'accord', 2012)
      expect(test_car.year()).to(eq(2012))
    end
  end

end
