=begin

Write a method that takes two Arrays as arguments, and returns an
Array that contains all of the values from the argument Arrays. There
should be no duplication of values in the returned Array, even if 
there are duplicates in the original Arrays.

**problem**

- input is two arrays
- output is an array containing all of the values from argument arrays
  - output must not contain any duplicate values

**examples**

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

**data structures**

- arrays

**algorithm**

- add the arrays together
- remove duplicate values
- return the result

=end

# def merge(arr1, arr2)
#   arr2.each do |element|
#     arr1.push(element) if !(arr1.include?(element))
#   end

#   arr1
# end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
