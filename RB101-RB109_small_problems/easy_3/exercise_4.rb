def multiply(num1, num2)
  num1 * num2
end

p multiply([3, 5], 3)

# Array multiplication seems to behave somewhat like String multiplication.
# A new Array is returned with the elements from the original array repeated.
# The new elements point the the same objects

a = ['dog', 'apple']
b = a * 2

p a

p b

b[1].upcase!

p a

p b
