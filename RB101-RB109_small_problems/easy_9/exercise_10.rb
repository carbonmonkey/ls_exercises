=begin
Grocery List

Write a method which takes a grocery list (array) of fruits with quantities and
converts it into an array of the correct number of each fruit.

**problem**

- input is a nested array
  - sub-arrays contain a name of a fruit(string) and a quantity(integer)
- output is an array with each fruit name repeated the quantity number of times

**example**

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

**data structures**

- array

**algorithm**

- create an empty array for the result
**loop**
  - get a sub array from the array
  - create an array with the fruit name multiply it by the quantity
  - add the resulting array to the result array
  - repeat until the end of the array is reached
**end loop**
- flatten and return the result array

=end

# def buy_fruit(arr)
#   arr.map do |sub_arr|
#     fruit, quantity = sub_arr
#     [fruit] * quantity 
#   end.flatten
# end

def buy_fruit(list)
  list.inject([]) do |arr, (fruit, quantity)|
    arr + ([fruit] * quantity)
  end
end

def buy_fruit(list)
  list.inject([]) { |arr, (fruit, num)| arr + ([fruit] * num) }
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]
