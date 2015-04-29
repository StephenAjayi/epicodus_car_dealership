require "rspec"
require "dealership"
require "pry"


describe(Dealership) do

  describe('#name') do
    it("will create an instance of dealership that has a name") do
      test_dealership = Dealership.new('Paul and Stephens used car capitol')
      expect(test_dealership.name()).to(eq('Paul and Stephens used car capitol'))
    end
  end

  describe("#dealer_id") do
    it("will ascribes an id to a dealership") do
      test_dealership = Dealership.new('bobs dealership')
      expect(test_dealership.dealer_id()).to(eq(1))
    end
  end

  desscribe('#save') do
    it('saves the object and adds it to an array') do
      test_dealership = Dealership.new('bobs dealership')
      test_dealership.save
      expect(test_dealership.save()).to(eq([test_dealership]))
    end
  end


end
