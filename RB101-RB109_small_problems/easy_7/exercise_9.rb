=begin
Write a method that takes two Array arguments in which each
Array contains a list of numbers, and returns a new Array
that contains the product of every pair of numbers that can
be formed between the elements of the two Arrays. The results
should be sorted by increasing value.

You may assume that neither argument is an empty Array.

**problem**

- inputs are two arrays
  - each is a list of numbers
- returns a new array
  - contains the product of every possible pair from input arrays
  - sorted by increasing value
- neither input is empty
- input array values are positive integers
- input arrays may be of different lengths

**examples**

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

**data structures**

arrays --> array

**algorithm**


- create an empty array for result

**outer-loop**
- get a number from the first array

  **inner-loop**
  - get a number from the second array
  - multipty the numbers together
  - add the result to result array
  - repeat inner-loop until the end of the second array is reached
  **end inner-loop**

- repeat outer-loop until the end of the first array is reached
**end outer-loop**

- sort the result array by ascending value
- return the result array



  OR

- create an array with all possible pairs from input arrays
- until the end of the resulting array is reached
  - get a pair from the array
  - multiply the pair toghether
  - add the result to a new array
- sort the resulting array in ascending order and return it

=end

# def multiply_all_pairs(list_1, list_2)
#   list_1.product(list_2).map{ |num_1, num_2| num_1 * num_2 }.sort
# end

def multiply_all_pairs(list_1, list_2)
  result = []

  list_1.each do |num_1|
    list_2.each { |num_2| result << (num_1 * num_2) }
  end

  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
