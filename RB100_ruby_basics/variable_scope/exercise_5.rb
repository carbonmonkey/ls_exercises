a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# The output is 'Xyzzy'. The method uses reassignment on line 4, which 
# does not mutate the value of the string that 'a' is pointing to.