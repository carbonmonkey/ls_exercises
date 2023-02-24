=begin
problem:
- input is a sorted array of integers
- output is an array that includes only the missing integers in order

rules:
- input array may contain negative numbers
- input does not contain duplicate numbers
- if there are no missing numbers, return an empty array
- if the input contains only one number, return an empty array

ex:
missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
[-3, -2, 1, 5] --> [-1, 0, 2, 3, 4]

ds:
array

range

array of missing nums

algo:
- if the input array is less than two elements, return an empty array
- get all the numbers between the first and last elements of the input
- place the numbers into an array
  - create a range and convert to an array
- remove the numbers in the input array from the resulting array
- return the result
=end

def missing(arr)
  (arr[0]..arr[-1]).to_a - arr
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []