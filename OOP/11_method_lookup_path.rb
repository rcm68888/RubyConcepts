module Walkable
  def walk
    "I'm walking here!"
  end
end

module Swimmable
  def swim
    "I'm look Ma! I'm swimming!"
  end
end

module Climable
  def climb
    "I-I'm climbimg! I'm climbing!"
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and i speak!"
  end
end


puts "---Animal method lookup---"
puts Animal.ancestors

fido = Animal.new

fido.speak

fido.walk

# returns `undefined method `swim' for an instance of Animal (NoMethodError)`
# fido.swim


class GoodDog < Animal
  include Swimmable
  include Climable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors