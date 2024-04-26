class Parent
  def say_hi
    p "Hi from Parent."
  end
end

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def send
    p "Send form Child..."
  end

  def instance_of?
    p "I'm a fake instance"
  end
end

Parent.superclass

child = Child.new
child.say_hi

son = Child.new
# Error test
# son.send :say_hi

lad = Child.new
# lad.send :say_hi

c = Child.new
# c.instance_of? Child
# c.instance_of? Parent

heir = Child.new
# heir.instance_of? Child