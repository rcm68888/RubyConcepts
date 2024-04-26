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

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age

# warning test
# sparky.DOG_YEARS = 12

puts sparky # When placed in any interpolation same effect wherever to_s is applied 
p sparky # = puts sparky.inspect

class Foo
  def to_s
    42
    '42'
  end
end

foo = Foo.new
puts foo
puts "foo is #{foo}"


class Bar
  attr_reader:xyz
  def initialize
    @xyz = { a: 1, b: 2}
  end

  def to_s
    'I am a bar object!'
  end
end

bar = Bar.new
puts bar
puts bar.xyz