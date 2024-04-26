class GoodDog
  attr_accessor :name, :height, :weight
  
    def initialize(n, h, w)
      self.name = n
      self.height = h
      self.weight = w
    end
    
    def change_info
      self.name = n
      self.height = h
      self.weight = w
    end
  
    def info
      "#{self.name} weights #{self.weight} and is #{self.height} tall."
    end
  
    def what_is_self
      self
    end
  
    def self.this_is_a_class_method
    end
  
    puts self
  end
  
  
  doggy = GoodDog.new("Amanda", "2ft" ,"25lbs")
  puts doggy.what_is_self