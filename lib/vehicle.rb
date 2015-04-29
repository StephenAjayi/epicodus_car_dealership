class Vehicle
  define_method(:initialize) do |name|
    @name = name
  end
  define_method(:car_name) do
    @name
  end
end
