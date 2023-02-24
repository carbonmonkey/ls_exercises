=begin
problem:
- inputs an array and an object
- output is the object

rules:
- yields an element of the array and the object on each iteration

ex:
provided

ds:
array, object
block

iterator


array

algo:
- iterate through the array
  - pass the current element and the object to the block

- return the object
=end

def each_with_object(arr, obj)
  arr.each { |item| yield(item, obj) }
  obj
end

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
p result == [1, 9, 25]

result = each_with_object([1, 3, 5], []) do |value, list|
  list << (1..value).to_a
end
p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

result = each_with_object([1, 3, 5], {}) do |value, hash|
  hash[value] = value**2
end
p result == { 1 => 1, 3 => 9, 5 => 25 }

result = each_with_object([], {}) do |value, hash|
  hash[value] = value * 2
end
p result == {}