## example using class variables where all instances can access and effect. 
class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs

grover = GoodDog.new
mia = GoodDog.new

puts GoodDog.total_number_of_dogs