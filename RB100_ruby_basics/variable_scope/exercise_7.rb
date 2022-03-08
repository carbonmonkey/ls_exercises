a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# The output is '3'. The variable 'a' is initialized in the top-level,
# and is accessible within the do...end block. Variables defined in the 
# outer scope are accessible within a block. The value of 'a' is reassigned
# on line 5 at each itereation of the method each. By the time it's printed
# on line 8, 'a' has the value of 3.