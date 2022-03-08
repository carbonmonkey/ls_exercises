def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64

def power_to_the_nth(number, nth)
  total = number
  (nth - 1).times do |_|
    total = multiply(total, number)
  end
  total
end

p power_to_the_nth(-3, 3)
