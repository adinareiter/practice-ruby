class Vehicle
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize
    super
    @make = "toyota"
    @model = "sienna"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new(type: "mountain", weight: 25)
pp bike

car = Car.new()
pp car

vehicle = Vehicle.new()
pp vehicle

pp car.accelerate
pp bike.accelerate
bike.ring_bell
car.honk_horn
