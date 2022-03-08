a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# The output is '7' because shadowing is occuring here. The block has 
# a parameter of 'a', so it cannot see the variable 'a' that was
# initialied in the outer scope.