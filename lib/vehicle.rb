class Vehicle
  define_method(:initialize) do |make, model, year|

    @make = make
    @model = model
    @year = year

  end

  def make

    @make

  end

  define_method(:model) do

    @model

  end

  def year

    @year

  end

end
