module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

# GoodDog example
puts '-- GoodDog speaks --'
sparky = GoodDog.new
sparky.speak("Arf!")

puts '-- GoodDog ancestors --'
puts GoodDog.ancestors


# HumanBeing example
puts '-- HumanBeing speaks --'
bob = HumanBeing.new
bob.speak("Wah? Oh! Uh, Hello!")

puts '-- HumanBeing ancestors --'
puts HumanBeing.ancestors

# Exercises
# 1. How do we create an object in ruby?
class MyClass
end

my_obj = MyClass.new

# 2. What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.
module Study
end

class MyClass
  include Study
end

my_obj = MyClass.new