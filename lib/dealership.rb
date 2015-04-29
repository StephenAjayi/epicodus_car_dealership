class Dealership

  @@dealerships=[]

  define_method(:initialize) do |name|
    @name = name
    @dealer_id = @@dealerships.length+1
    @cars = []
  end

  define_method(:name) do
    @name
  end

  def dealer_id
    @dealer_id
  end

  def save
    @@dealerships<<self
  end


  def self.all
    @@dealerships
  end

  def cars
    @cars
  end

  def self.clear
    @@dealerships = []
  end

  define_singleton_method(:find) do |dealer_id|
    found_dealership = nil
    @@dealerships.each() do |dealership|
      if dealership.dealer_id().eql?(dealer_id)
        found_dealership = dealership
      end
    end
    found_dealership
  end
end
