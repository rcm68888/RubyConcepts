my_proc = Proc.new { |arg1| print "#{arg1}! " }

[1,2,3].each(&my_proc)
#1! 2! 3! =>[1,2,3]

my_proc.call("howdy ")  # edit: note that this is the same `my_proc` as above
# howdy => nil