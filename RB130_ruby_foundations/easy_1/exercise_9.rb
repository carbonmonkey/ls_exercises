=begin
problem:
- input is an array
- output is a boolean
rules:
- takes a block
- returns true if the block has a truthy return exactly one time
- otherwise returns false

ex:
provided

ds
array
block

counter

boolean

algo:
- set a counter to 0
- iterate through the array
  - yield to the block
  - if the block's return is truthy, increment the counter by 1
  - return false if the counter is greater than 1

- return true if the counter is 1, otherwise false
=end

def one?(arr)
  counter = 0
  arr.each do |item|
    counter += 1 if yield(item)
    return false if counter > 1
  end

  counter == 1
end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false