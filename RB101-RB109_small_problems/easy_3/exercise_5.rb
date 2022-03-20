def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64

# Further Exploration
def power_to_the_nth(number, nth)
  multiply(number, 1) ** nth
end

p power_to_the_nth(2, 4)
