=begin
Write a method that takes two Array arguments in which each
Array contains a list of numbers, and returns a new Array that
contains the product of each pair of numbers from the arguments
that have the same index. You may assume that the arguments
contain the same number of elements.

**problem**

- takes 2 array arguments
- each is a list of numbers
- returns a new array
  - contains the product of each pair of numbers from input arrays
   that share an index number
- input arrays contain the same number of elements
- return array also has same number of elements
- elements are positive integers


**examples**

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

**data structures**

- arrays --> array

**algorithm**

- create an empty array for the result
- until the end of an input array is reached
  - get a nummber from the first array
  - get a number from the second array at the same index
  - multiply the numbers together
  - add the result to the result array
- return the result array
=end

# def multiply_list(arr1, arr2)
#   arr1.map.with_index do |num, index|
#     num * arr2[index]
#   end
# end

def multiply_list(list_1, list_2)
  list_1.zip(list_2).map { |elem| elem.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
