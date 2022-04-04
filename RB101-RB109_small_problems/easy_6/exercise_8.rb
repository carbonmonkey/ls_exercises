=begin

Given an unordered array and the information that exactly one value 
in the array occurs twice (every other value occurs exactly once),
how would you determine which value occurs twice? Write a method 
that will find and return the duplicate value that is known to be in 
the array.

**problem**

- input is an array
  - array has exactly 1 duplicate value
- output is the returned duplicate element

**examples**

find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

**data structres**

- arrays, hash

**algorithm**

- creat a hash with an intial default value of 0
- get the first element of the input array
- add it to the hash as a key and increment the value by 1
- repeat the prevoius two steps until the end of the array is reached
- return the key in the hash that has a value of 2

**or**

- create a empty array
- get an element from the input array
- check to see if it exists in the new array
  - if no, add it to the new array
- repeat previous two steps until the current element already exists
  in the array
- return the current element 

=end

def find_dup(array)
  element_count_hash = Hash.new(0)
  array.each { |element| element_count_hash[element] += 1 }
  element_count_hash.key(2)
end

# def find_dup(array)
#   temp = []
#   counter = 0
#   loop do
#     current_element = array[counter]
#     if temp.include?(current_element)
#       return current_element
#     else
#       temp << current_element
#     end
#     counter += 1
#   end
# end

def find_dup(array)
  array.inject([]) do |temp_array, element|
    if temp_array.include?(element)
      return element
    
    else
      temp_array << element
    
    end
  end
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
