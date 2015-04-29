require "rspec"
require "dealership"
require "pry"


describe(Dealership) do
  before() do
      Dealership.clear()
    end

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

  describe('#save') do
    it('saves the object and adds it to an array') do
      test_dealership = Dealership.new('bobs dealership')
      test_dealership.save
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end


  describe('#cars') do
    it('creates a car object ') do
      test_dealership = Dealership.new('bobs dealership')
      expect(test_dealership.cars()).to(eq([]))
    end
  end

  describe("#save") do
      it("adds a dealership to the array of saved dealerships") do
        test_dealership = Dealership.new("Bob's Used Cars")
        test_dealership.save()
        expect(Dealership.all()).to(eq([test_dealership]))
      end
    end

    describe(".all") do
      it("is empty at first") do
        expect(Dealership.all()).to(eq([]))
      end
    end

    describe(".clear") do
      it("empties out all of the saved dealerships") do
        Dealership.new("Bob's Used Cars").save()
        Dealership.clear()
        expect(Dealership.all()).to(eq([]))
      end
    end

    describe(".find") do
      it("returns a dealership by its id number") do
        test_dealership = Dealership.new("Bob's Used Cars")
        test_dealership.save()
        test_dealership2 = Dealership.new("Jane's Cars")
        test_dealership2.save()
        expect(Dealership.find(test_dealership.dealer_id())).to(eq(test_dealership))
      end
    end

end
