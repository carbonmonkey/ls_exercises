=begin
Problem:
- create a triangle class
- must determine the kind of triangle: equilateral, isosceles, or scalene
- instantiating a new triangle object takes 3 arguments: the length of each side
- if the side lengths are not valid, an argument error is raised
- a negative value for a side is not valid
- a side can have a float for a value, as long as it's  greater than 0
- the sum of the lenght of any two sides must be greater than the length of the third side
- an equilateral has all sides of equal length
- an isosceles has two sides of equal length
- a scalene has no equal length sides

Examples:
Test cases show that:
- a `Triangle` object must have a `@kind` attribute
- a `Triangle` object must have a `#kind` getter method that returns a string for the triangle type
- a constructor method takes 3 arguments for side lengths
- instantiating an instance of `Triangle` that is not valid will throw an argument error
- instantiating a `Triangle` object with any side <= 0 will throw an argument error

Data Structures:
numbers for side lengths

array of sides

string of type

Algorthim:
- create a `Triangle` class
- create a constructor method that takes 3 arguments for sides
- create a method to validate if a triangle is valid
  - check if any side lenght is less that or equal to 0
    - if so, raise an exception
  - check if any side is greater than the sum of the other two
    - if so, raise an exception
- create a method that determines the kind of triangle
  - check if all sides are equal
    -if so, return 'equilateral'
  - check if two sides are equal
    - if so, return 'isoscleles'
  - otherwise, return 'scalene'
=end

class Triangle
  def initialize(*sides)
    @sides = sides
    raise(ArgumentError) unless valid_triangle?
  end

  def kind
    return 'equilateral' if @sides.all?(@sides.first)
    return 'isosceles' if @sides.any? { |side| @sides.count(side) == 2 }
    'scalene'
  end

  private

  def valid_triangle?
    @sides.none? { |side| side <= 0 } && @sides.max < @sides.min(2).sum
  end
end