class GoodDog
  attr_accessor :name, :weight, :height # attr_reader = get only, attr_writer = set only, attr_*, Takes in Symbal objects
  def initialize(name, weight, height) # special method, keeps track of the object state for each instance
    puts "This object was initialized!"
    @name = name # @ Instance variable
    @height = height
    @weight = weight
  end

  # //The getter and setter are to show how it works. The attr_accessor is a shortcut to this.//
  # def name # Renamed from get_name, convention that its the same as the instance variable.
  #   @name
  # end

  # # setters return the value givin and will ignore anything else trying to be returned
  # def name=(n) # Renamed from get_name, convention that its the same as the instance variable.
  #   @name = n
  #   "Humbug!" # ignored/not returned
  # end

  def speak
    "#{name} says Arf!" # With attr_accessor no longer need the @ calling the method rather than the variable
  end

  def change_info(n, h, w) # if just 'name' instead of 'self.name' it would set it locally
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall." # self for getter is unnessacery. And best to avoid self where not required. Link: https://rubystyle.guide/#no-self-unless-required
  end

  def some_method
    self.info
  end
end


# The .new goes through the initialize as a constructor
sparky = GoodDog.new("Sparky", "", "")
zoinks = GoodDog.new("Zoinks", "", "")
puts sparky.speak
puts zoinks.speak
=begin
undefined method `name' for an instance of GoodDog (NoMethodError) When not using setter's or getter's
puts sparky.name

~~ Returns the name of the instanced object. ~~
When using the getter
puts sparky.get_name
~~ sets a new name ~~
When using the setter
sparky.set_name = "Spartacus"
puts sparky.get_name
=end
# When using the attr_accessor
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name

damon = GoodDog.new("Damon", "12 inches", "10 lbs")
puts damon.info

damon.change_info('Spartacus', '24 inches', '45 lbs')
puts damon.info


# Social security example @ssn
# def ssn
#   # Converts '123-45-6789' to 'xxx-xx-6789'
#   'xxx-xx-' + @snn.split('-').last
# end


# Example Exercises
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
end

chevrolette = MyCar.new(1997, 'chevy lumina', 'white')
# test the speed methods
chevrolette.speed_up(12)
chevrolette.current_speed
chevrolette.brake(30)
chevrolette.current_speed
chevrolette.speed_up(100)
chevrolette.current_speed
chevrolette.shut_down
chevrolette.current_speed

chevrolette.color = "BLack"
puts chevrolette.color
puts chevrolette.year

chevrolette.spray_paint("Red")