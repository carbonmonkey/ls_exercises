=begin

Write a method that takes an Array as an argument, and returns two 
Arrays (as a pair of nested Arrays) that contain the first half and 
second half of the original Array, respectively. If the original 
array contains an odd number of elements, the middle element should 
be placed in the first half Array.

**problem**

- input is an array
- output is a nested array with two sub arrays
  - first array conatains first half of original array
  - second array contains second half
  - if input array has odd number of elements, middle element goes
    in first array
- one or both input arrays may be empty

**examples**

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

**data structures**

- arrays

**algorithm**

- get the number of elements in the array
  - if the array is empty, return two nested empty arrays
  - if the array has one element, return it in the first sub-array
    with the second sub array empty
  - if the number of elements is even, divide the array in half
  - if the number is elements is odd:
      - divide the number of elements by 2
      - split the array at the resulting index number
      - return a new array with the divided arrays nested

- create a nested array with two empty arrays
=end

def halvsies(array)
  size = array.size
  mid_index = size.odd? ? (size / 2) : (size / 2) - 1
  
  [array[0..mid_index], array[(mid_index + 1)..-1]]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
