lambda do |word| 
  puts word
  return word            # you can do this in lambdas not Procs
end.call("howdy ")
# howdy => "howdy "        # not nil because we gave it a return

# 2nd additional closure is called Method
class Array
  def my_each(some_method)
    i = 0
    while i < self.size
      some_method.call(self[i])
      i+=1
    end
  end
  self
end

def print_stuff(word)
  print "#{word}! "
end

[1,2,3].my_each(method(:print_stuff))    # symbolize the name!
# 1! 2! 3! => nil