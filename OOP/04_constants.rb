class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age
  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age

# warning test
# sparky.DOG_YEARS = 12