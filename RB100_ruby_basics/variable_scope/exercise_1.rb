a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# This code outputs '7'. The variable 'a' is initialized in the main scope
# on line 1. On line 7, 'a' is passed as an argument to the method invocation.
# On line 3, the method parameter 'b' is assigned to the same integer object
# that the variable a is pointing to (7). On line 4, 'b' is reassigned to a
# new integer object whose value is 17, the result of evaluating (b = b + 10).
# The object 'a' is poiting to remains unchanged, and so line 8 outputs '7' 