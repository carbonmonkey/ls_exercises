=begin
problem:
- input is an array
- output is a boolean dependent on the blocks return value
  - if the block's return value is truthy on every iteration, the method returns true
  - if the block's return is false on any iteration, the method immediately returns false
rules:
- if input array is empty, return true
- don't use all?, any? none?, or one?

ex:
all?([1, 3, 5, 6]) { |value| value.odd? } == false
returns false on 6

all?([1, 3, 5, 7]) { |value| true } == true
true because block returns true on every iteration

ds:
array

block

boolean

algo:
- iterate through the array
  - yield to a block
  - return false if the block's return is falsy

- return true
=end

def all?(arr, &bloc)
  arr.each { |item| return false unless bloc.call(item) }

  true
end

p all?([1, 3, 5, 6]) { |value| value.odd? } == false
p all?([1, 3, 5, 7]) { |value| value.odd? } == true
p all?([2, 4, 6, 8]) { |value| value.even? } == true
p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p all?([1, 3, 5, 7]) { |value| true } == true
p all?([1, 3, 5, 7]) { |value| false } == false
p all?([]) { |value| false } == true