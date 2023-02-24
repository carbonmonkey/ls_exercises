=begin
problem:
- input is an array
- output is the element for which the block returns the highest value

rules:
- an empty array returns nil

ex:
provided

ds:
arr
block

tracker

element

algo:
- return nil if the array is empty
- set the max value to nil
- set the max element to nil
- iterate though the array
  - yield the current element to the block
  - if the max value is nil or the blocks return is greater than the max value
    - set the max value to the block's return value
    - set the max element to the current element

return the max element
=end

def max_by(arr)
  max_value = nil
  max_element = nil

  arr.each do |item|
    block_value = yield(item)
    if max_value.nil? || block_value > max_value
      max_value = block_value
      max_element = item
    end
  end

  max_element
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil