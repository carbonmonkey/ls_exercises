=begin
problem:
- input is a method that take 3 arguments (start value, end value, step value)
- yields to a block with the start value
  - increments the start value by the step value and yields
  - repeates until the end value is reached

ex:
step(1, 10, 3) { |value| puts "value = #{value}" }
1, 4, 7, 10

ds:
integers

loop

nil

algo:
- set current value to start value
- until the current value is greater than the end value
  - yield to the block with the current value
  - increment the current value by the step value

return nil
=end

def step(first, last, step_value)
  current_value = first
  until current_value > last
    yield(current_value)
    current_value += step_value
  end

  nil
end

p step(1, 10, 3) { |value| puts "value = #{value}" }