## Understand the Problem
### expected input/output
**inputs:**
1. a number

**outputs:**
1. the sum of all multilples of 3 or 5 that lie between 1 and that number

### requirements explicit/rules
**terms:**
- multiple
	- a number that can be divided by another number without a remainder is a multiple of said other number

**explicit requirements:**
- the sum of ALL multiples of 3 OR 5 that are between 1 and input number
- number passed in is an integer greater than 1

**implicit requirements:**
- multiples are unique (not repeated if multiplte of both 3 and 5)
- input number is included in collection of multiples if it is a multiple of 3 or 5
- method name is `multisum`

### mental model
**summary view of entire problem:**
- A method that takes an input number, finds the multiples of 3 or 5 between 1 and the input number, adds the multiples together and returns the sum.

## Examples and Test Cases
**inputs:**
```ruby
multisum(20) == 98
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
```
**expected outputs:**
`true`
`true`
`true`
`true`
`true`

## Data structure
**data structures for converting inputs to outputs:**
- array

## Algorithm
**steps for converting input to output:**
1. set the input number as `num`
2. create an empty collection `multiples`
3. iterate through all integers between 1 and `num`
	1. if the integer is evenly divisible by 3 or 5, add it to `multiples`
4. ~~remove any duplicate values in `multiples`~~ unnecessary
5. return the sum of all values in `multiples`

## Code
**code with intent:**