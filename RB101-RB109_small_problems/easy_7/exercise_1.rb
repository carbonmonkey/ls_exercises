=begin

Write a method that combines two Arrays passed in as arguments, and 
returns a new Array that contains all elements from both Array 
arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they 
have the same number of elements.

**problem**

- input is 2 arrays
- output is a new array
  - contains all elements from both arrays
  - elements are taken from input arrays in alteration
- input arrays are not empty
- input arrays contain the same numbmer of elements
- first element is from first array, second element is from second array
- index number may be incremented after an element from each array is added

**examples**

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

**data structures**

- arrays

**algorithm**

- create an empty array for the result
- set a counter to 0
- use the counter to add an element from each array at that inex to
  result array
- increment the counter by 1
- repeat the last 2 steps until the end of both arrays is reached
- return the result array

=end

# def interleave(arr1, arr2)
#   result = []
#   counter = 0

#   until counter >= arr1.length
#     result.push(arr1[counter], arr2[counter])

#     counter += 1
#   end

#   result
# end

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

def interleave(arr1, arr2)
  result = []

  arr1.length.times { |i| result.push(arr1[i], arr2[i]) }

  result
end

# def interleave(arr1, arr2)
#   arr1.map.with_index do |value, index|
#     [value, arr2[index]]
#   end.flatten
# end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
