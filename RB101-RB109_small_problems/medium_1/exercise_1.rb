=begin
Rotation (Part 1)

Write a method that rotates an array by moving the first element to the end of the array.
The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

**problem**

- input is an array of 1 or more elements
- output is a new array with the first element moved to the end of the array
- may not use rotate methods
- a single element array returns an identical array

**examples**

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

**data structures**

- array --> array

**algorithm**

- create a shallow copy of the input array
- remove the first element
- append it to the end of the array
- return the array
=end

def rotate_array(arr)
  temp = arr.clone
  temp << temp.shift
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

# def rotate_array(arr)
#   arr.map.with_index do |_, idx|
#     idx += 1
#     if arr.size == idx
#       arr[0]
#     else
#       arr[idx]
#     end
#   end
# end

# def rotate_array(arr)
#   arr.map.with_index do |_, idx|
#     idx += 1
#     arr.size == idx ? arr[0] : arr[idx]
#   end
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

p rotate_string('abcde') == 'bcdea'
p rotate_integer(12345) == 23451
