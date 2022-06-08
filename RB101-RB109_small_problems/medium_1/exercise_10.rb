def fibonacci_last(n)
  until n <= 60
    n %= 60
  end
  fibs = [1, 1]
  until fibs.size >= n
    fibs << (fibs[-2] + fibs[-1]) % 10
  end
  fibs.last
end

# def fibonacci_last(n)
#   value_1 = 0
#   value_2 = 1
#   n.times do
#     value_1, value_2 = value_2, value_1 + value_2
#   end
#   value_1.to_s[-1].to_i
# end

p fibonacci_last(60)
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
p fibonacci_last(1234567899877459999999999999999999999) # -> 5
