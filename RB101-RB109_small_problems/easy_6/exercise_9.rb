=begin

Write a method named include? that takes an Array and a search value 
as arguments. This method should return true if the search value is 
in the array, false if it is not. You may not use the Array#include? 
method in your solution.

**problem**

- inputs are an array, and a search value
- output is true if search value is in the array, false otherwise
- may not use include? method

**examples**

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

**data structures**

- array

**algorithm**

- get a value from the array
- check to see if it matches the search value
  - if yes, return true and exit method
- repeat the previous step until a match is found, or the end of the 
  array is reached
- return false

=end

# def include?(array, search_value)
#   array.each { |value| return true if value == search_value }

#   false
# end

def include?(array, value)
  array.any? { |elem| elem == value }
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
