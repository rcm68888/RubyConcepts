class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    @colos = color
  end

  def speak
    super + " from GoodDog class"
  end
end

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

class Bear < Animal
  def initialize(color)
    super()
    @color = color
  end
end

bdogname = BadDog.new(2, "bear")

sparky = GoodDog.new("")
bruno = GoodDog.new("Brown")

puts sparky.speak

bear = Bear.new("black")