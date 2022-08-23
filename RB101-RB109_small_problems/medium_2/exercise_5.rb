=begin
problem:
- inputs are three numbers
- output is a symbol
  - represents the type of triangle that can be made using the numbers as lengths for the sides
- equilateral if all sides are equal
- isosceles if 2 sides are equal
- scalene if all sides different
- invalid if longest side is longer than other sides put together
- invalid if any side is 0

ex:
3, 1, 1 --> invalid; long side longer than sum of other sides

ds:
integers(sides)      conditional                    symbol(type or invalid)

algo:
- place the side lengths in an array
- sort the array
- if any side is 0, return :invalid
- if the sum of the first two array values is less than or equal to the last:
  - return :invalid
- if all three sides are equal: if the count of any side is 3
  - return :equalateral
- if two sides are equal: if the count of any side is 2
  - return :isosceles
- otherwise:
  - return :scalene



=end

# def triangle(*sides)
#   sides.sort!
#   if sides.any?(&:zero?)
#     :invalid
#   elsif (sides[0] + sides[1]) <= sides[2]
#     :invalid
#   elsif sides.any? { |side| sides.count(side) == 3 }
#     :equilateral
#   elsif sides.any? { |side| sides.count(side) == 2 }
#     :isosceles
#   else
#     :scalene
#   end
# end

def num_of_equal_sides(sides)
  sides.map { |side| sides.count(side) }.max
end

def triangle(*sides)
  return :invalid if sides.max >= sides.min(2).sum
  case num_of_equal_sides(sides)
  when 3 then :equilateral
  when 2 then :isosceles
  else        :scalene
  end 
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid