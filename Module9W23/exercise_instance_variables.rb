class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # initial manually defined getter method
  #def name
  #  @name
  #end

  # manually defined sett method
  #def name=(n)
  #  @name = n
  #end

end

p = Person.new('L. Ron')
puts p.name
p.name = "New Name"
puts p.name