=begin
problem:
- inputs are 2 arrays
- output is a new array with subarrays
  - each subarray contains an element from each input array at the same index
rules:
- output is in order
- input arrays should not be mutated
- cannot use Array#zip

ex:
zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

ds
arrays


nested array

algo:
- iterate through the first input array with index
  - place the current element into a new array along with the element at the current index from the second array
  - place the resulting array into a result array

- return the result array
=end

def zip(arr1, arr2)
  arr1.map.with_index do |item, idx|
    [item, arr2[idx]]
  end
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]