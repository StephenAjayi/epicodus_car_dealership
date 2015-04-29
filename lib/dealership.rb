class Dealership

  @@dealerships=[]

  define_method(:initialize) do |name|
    @name = name
    @dealer_id = @@dealerships.length+1
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






end
