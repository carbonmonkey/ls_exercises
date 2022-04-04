=begin

Write a method that takes an Array, and returns a new Array with the
elements of the original list in reverse order. Do not modify the 
original list.

You may not use Array#reverse or Array#reverse!, nor may you use the 
method you wrote in the previous exercise.

**problem**

- input is an array
- ouput is a new array
  - same elements as original array in reverse order
- may not use reverse methods
- may not modify original array

**examples**

[1, 2, 3, 4, 5] --> [5, 4, 3, 2, 1]

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

**data structures**

- input array
- output array

**algorithm**

- create an empty array for the result
- get the last element from the input array
- add it to the result array
- get next to last element from the input array
- add it to the result array
- repeat until the beginning of the input array is reached
- return the result array


=end

# def reverse(array)
#   result = []
#   counter = 1

#   until counter > array.length
#     result << array.fetch(- counter)
#     counter += 1
#   end

#   result
# end

# def reverse(array)
#   counter = 0

#   array.map do |_|
#     counter -= 1
#     array.fetch(counter)
#   end
# end

# def reverse(array)
#   array.each_with_object([]) do |element, result| 
#     result.unshift(element)
#   end
# end

def reverse(array)
  array.inject([], :unshift)
end

# def reverse(array)
#   temp = array.clone

#   array.map { |_| temp.pop }
# end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
