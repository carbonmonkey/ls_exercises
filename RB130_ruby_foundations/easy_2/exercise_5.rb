=begin
problem:
- input is an array
- output is an array containing the first element that the block returns a falsy value for, and all of the following elements

rules:
- takes a block
- truthy elements at beginning of array are dropped
- an empty array returns an empty array

ex:
provided

ds:
array
block

flag

array

algo:
- set a falsy flag to false
- iterate through the array
  - yield to the block and save the result
  - if the result is falsy, set the falsy flag to true
  - add the element to a result array if the falsy flag is true
- return the result array
=end

def drop_while(arr)
  falsy_found = false
  arr.each_with_object([]) do |item, result|
    r_value = yield(item)
    falsy_found = true unless r_value
    result << item if falsy_found
  end
end

# def drop_while(arr)
#   arr.each_with_index do |item, idx|
#     return arr[idx..-1] unless yield(item)
#   end

#   []
# end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []