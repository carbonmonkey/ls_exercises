=begin
problem:
- input is an array with 0 or an even number of elements
- output is nil

rules:
- method passed each consecutive pair of elements into a block

ex:
provided

ds:
array
block
iterator


nil

algo:
- iterate through the array with index
  - yield to the block passing is the current element and the element at the next index

- return nil
=end

def each_cons(arr)
  arr[0...-1].each_with_index { |item, idx| yield(item, arr[idx + 1]) }

  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil