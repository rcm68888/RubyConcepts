class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age
  def initialize(n, a)
    self.name = n
    self.age = a
  end

  private

  def human_years
    age * DOG_YEARS 
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end
end

sparly = GoodDog.new("Sparly", 4)
# Error test returns: private method `human_years' called for an instance of GoodDog (NoMethodError)
# sparly.human_years

class Person
  def initialize(age)
    @age = age
  end

  def older?(other_person)
    age > other_person.age
  end

  protected

  attr_reader :age
end

malory = Person.new(64)
sterling = Person.new(42)

malory.older?(sterling)
sterling.older?(malory)

# Error test returns: protected method `age' called for an instance of Person (NoMethodError)
# malory.age