a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# The output is once again '7'. There are two separately scoped 'a' variables.
# Assigning a new value the 'a' within the method's self contained scope
# does nothing to the value of 'a' that was initialized on line 1 in the top-level
# scope.