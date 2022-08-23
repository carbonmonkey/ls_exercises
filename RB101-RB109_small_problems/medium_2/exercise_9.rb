=begin
problem:
input is an array
output is the same array, sorted
- must bubble sort
- compare each consecutive pair of elements
  - if first is greater than second, swap the elements
  - continue through the end of the array
  - repeat until no swaps take place
- input array must be mutated
- input will have at least two elements

ex
4321 --> 3421 --> 3241 --> 3214

3214 --> 2314 --> 2134 --> 2134

2134 --> 1234 --> 1234 --> 1234

ds:
array

algo:
- start a loop
- set a swap counter to 0
- iterate from 0 to array size - 2 for indexes
  - if the element at the current index is greater than the next
    - swap the elements
    - increment the swap counter
- break the loop if the swap counter is 0
- return the array

=end

# def bubble_sort!(array)
#   last = array.size
#   no_swap = nil
  
#   until no_swap
#     no_swap = true
#     last -= 1
    
#     for index in 0...last 
#       if array[index] > array[index + 1]
#         array[index], array[index + 1] = array[index + 1], array[index]
#         no_swap = false
#       end
#     end
#   end
  
#   nil 
# end

def bubble_sort!(array)
  last_index = array.size - 1
  loop do
    switched = false
    1.upto(last_index) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      switched = true
      last_index = index
    end
    break unless switched
  end
  nil
end

# def bubble_sort!(array)
#   loop do
#     no_swap = true
#     array.each_with_index do |item1, index|
#       next if index == array.size - 1
#       item2 = array[index + 1]
#       if item1 > item2
#         array[index], array[index + 1] = item2, item1
#         no_swap = false
#       end
#     end
#     break if no_swap
#   end
#   array
# end

arr = [4,6,2,7,3,8,4,8,4,34,6,8,9]
bubble_sort!(arr)
p arr