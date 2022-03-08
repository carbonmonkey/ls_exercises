def my_rand(num)
  arr = []
  0.upto(num - 1) { |number| arr.push(number) }
  arr.shuffle.pop
end

numbers = []

while numbers.length < 5
  numbers << my_rand(100)
end

puts numbers

