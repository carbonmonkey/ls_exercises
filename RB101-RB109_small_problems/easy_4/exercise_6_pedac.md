## Understand the Problem
### expected input/output
**inputs:**
1. an array of numbers

**outputs:**
1. an array with the value of each element being the running total from the original array

### requirements explicit/rules
**terms:**
- running total ->
	- the summation of a sequence of numbers which is updated each time a new number is added to the sequence, by adding the value of the new number to the previous running total.

**explicit requirements:**
- output array must have the same number of elements as the input array
- each number from the input array is added to the running total, and the result becomes the value of the next element of the output array.
- the output is a return value
- must use a method

**implicit requirements:**
- input array has either positive integer values, or is empty

### mental model
**summary view of entire problem:**
- a method that calulates the running total for each element, and adds the value to the output array

## Examples and Test Cases
**inputs:**
```ruby
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
```
**expected outputs:**
all `true`

**edge case inputs:**
```ruby
running_total([1.7, 2, 3.5]) == [1.7, 3.7, 7.2]
running_total([0, 0, 0]) == [0, 0, 0]
running_total([-3, -2, 5]) == [-3, -2, 5]
```

**expected outputs:**
all `true`

## Data structure
**data structures for converting inputs to outputs:**
- arrays

## Algorithm
**steps for converting input to output:**
1. set input array as `input_arr`
2. set an empty array as `running_totals`
3. set `total` as `0`
4. iterate through each element of `input_arr`
	1. increment the value of `total` by the value of the element
	2. add the value of `total` as an element to `running_totals`
5. return the value of `running_totals`

## Code
**code with intent:**
