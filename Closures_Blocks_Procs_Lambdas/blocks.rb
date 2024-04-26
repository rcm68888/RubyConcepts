[1,2,3].each { |num| print "#{num}! " }
#1! 2! 3! =>[1,2,3]

[1,2,3].each do |num|
   print "#{num}!"
end
#1! 2! 3! =>[1,2,3]         # Identical to the first case.

class Array 
  def my_each
    i = 0
    while i < self.size
        yield(self[i])  
        i+=1      
    end
    self
  end
end

[1,2,3].my_each { |num| print "#{num}!" }
#1! 2! 3! => [1,2,3]

class Array
  def my_each
    i = 0
    while i < self.size
        print "#{self[i]}!"   # Our block got "subbed in" here
        i+=1
    end
    self
  end
end