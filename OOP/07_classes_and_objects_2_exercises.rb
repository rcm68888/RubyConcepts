# 1. Add a class method to your MyCar class that calculates the gas mileage (i.e. miles per gallon) of any car.
class MyCar
  attr_accessor :color, :speed
  attr_reader :year
  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(accelerate)
    @speed += accelerate
  end

  def brake(slow_down)
    self.speed - slow_down < 0 ? self.speed = 0 : self.speed -= slow_down
  end

  def current_speed
    puts "Currently going #{@speed} MPH"
  end

  def shut_down
    self.speed = 0
    puts 'Aaaannndd, parked!'
  end

  def spray_paint(add_paint)
    self.color = add_paint
    puts "Spray painted the car to look #{add_paint}. Looks pretty good."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas" 
  end

  #2. Override the to_s method to create a user friendly print out of your object.
  def to_s
    # using self makes it recursive. Going into a loopdy loop lol. Stack be deep. Stack be infinite. Stack be Stack.
    "This be #{color}"
  end
end


fordfocus = MyCar.new(20`0, 'Ford Focus', 'white')
# test
MyCar.gas_mileage(13, 351)

puts fordfocus
## Note the "puts" calls "to_s" automatically.

# another Example
class Person
  #attr_reader :name
  # We get an error with attr_reader because it only creates a getter method. #When we try to reassign the name instance variable to "Bob", we need a #setter method called name=. We can get this by changing attr_reader to #attr_accessor or attr_writer if we don't intend to use the getter #functionality.
  
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
puts bob