# Exercise 3
module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end

# Exercise 1, 2, 3, 5, 6
class Vehicle
  @@number_of_vehicles = 0

  attr_accessor :color, :speed
  attr_reader :model, :year
  def initialize(year, model, color)
    @@number_of_vehicles += 1
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

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private
  def years_old
    Time.now.year - self.year
  end
end

# Exercise 1, 5
class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  def to_s
    "This car be #{color}"
  end
end

# Exercise 1, 5
class MyTruck < Vehicle
  include Towable
  def to_s
    "This truck be #{color}"
  end

  NUMBER_OF_DOORS = 2
end

my_car = MyCar.new("","","")
my_truck = MyTruck.new("","","")

Vehicle.number_of_vehicles

# Exercise 5
lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
MyCar.gas_mileage(13, 351)
lumina.spray_paint("red")
puts lumina

# Exercise 4
puts "", Vehicle.ancestors
puts "", MyCar.ancestors
puts "", MyTruck.ancestors

# Exercise 6
puts lumina.age

# Exercise 7
class Student
  attr_accessor :name
  attr_reader :grade
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than? other_student
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 85)
puts "Well done!" if joe.better_grade_than?(bob)