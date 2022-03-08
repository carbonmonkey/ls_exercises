array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# An exception is raised because the variable 'a' is initialized inside
# the block, and so it is not available outside of the block.