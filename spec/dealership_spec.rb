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
end
