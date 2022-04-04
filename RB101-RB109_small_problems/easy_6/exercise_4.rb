=begin

Write a method that takes an Array as an argument, and reverses its elements 
in place; that is, mutate the Array passed into this method. The return value
should be the same Array object.

You may not use Array#reverse or Array#reverse!.

**problem**

- input is an array
- ouput is array with elements reversed
  - elements must me reversed in place
  - return value must be the same Array object
- may not use reverse methods

- might the input array be empty?
  - yes
- what data types can the input array contain?
  - integers, strings

**examples**

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

**data structures**

- input: array
- a temp array

**algorithm**

- create an empty temp array
- remove an element from the end of the input array
- add it to the end of the temp array
- repeat previous 2 steps until input array is empty
- concatinate the input array with the temp array
- return the input array

=end

# def reverse!(array)
#   temp = []
#   until array.empty?
#     temp << array.pop
#   end
#   array.concat(temp)
# end

def reverse!(array)
  temp = array.clone

  array.map! { |_| temp.pop }
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

 list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

 list = []
p reverse!(list) == [] # true
p list == [] # true
