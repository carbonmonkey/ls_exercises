=begin
problem:
- input is an array
- output is true of false
rules:
- method takes a block
- if the block returns true on an iteration, the method immediately returns true
- otherwise, the method returns false
- an empty array returns false
- cannot use all?, any?, none?, or one?

ex:

any?([1, 3, 5, 6]) { |value| value.even? } == true
-> returns true on 6

any?([1, 3, 5, 7]) { |value| true } == true
-> block returns true, so method returns true on first iteration

ds:
array

block

boolean

algo:
- iterate through the array
  - yield to the block
  - if block returns true, return true

- return false
=end

def any?(arr)
  arr.each do |item|
    return true if yield(item)
    # result = yield(item)
    # return result if result == true
  end

  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| 1 } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false
p any?(a: 1, b: 2) { |k, v| v == 2 }