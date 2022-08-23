=begin
- inputs are three angles
- output is the type of triangle
  - right if it has a 90 degree angle
  - acute if all three angles are less than 90
  - obtuse if an angle is greater than 90
  - invalid unless the sum of the angles is 180  and no angle is 0
  - output is a symbol
- arguments are integer and represent degrees

ex:
50, 50, 50 --> :invalid --> sum of angles is not 180
120, 50, 10 --> 180 --> angle greater than 90 --> :obtuse

ds:
array of input angles         conditional                        symbol

algo:
- check if the triangle is valid
  - no 0's and angles sum to 180
  - return :invalid if not valid
- get the largest angle in the input
  - if it's 90, return right
  - if it's greater than 90, then return obtuse
  - otherwise, return acute
=end

def valid_triangle?(angles)
  angles.sum == 180 && angles.none?(0)
end

def triangle(*angles)
  return :invalid unless valid_triangle?(angles)
  case angles.max
  when 90       then :right
  when (0...90) then :acute
  else               :obtuse
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(95, 85, 0) #== :invalid
p triangle(50, 50, 50) == :invalid