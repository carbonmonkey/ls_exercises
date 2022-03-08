a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# An exception is raised. The variable 'a' is initialized in the main 
# scope on line 1. Line 6 attempts to reassign the value of 'a', but 
# it is not accessible within the method definition. Method definitions
# are self-contained with respect to local variables.