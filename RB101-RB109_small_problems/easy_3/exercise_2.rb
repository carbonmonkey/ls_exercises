def prompt(string)
  puts "==> #{string}"
end

prompt('Enter the first number:')
num1 = gets.to_f

num2 = ''
loop do
  prompt('Enter the second number:')
  num2 = gets.to_f
  break if num2 != 0.0
  prompt('Second number cannot be 0.')
end

prompt("#{num1} + #{num2} = #{num1 + num2}")
prompt("#{num1} - #{num2} = #{num1 - num2}")
prompt("#{num1} * #{num2} = #{num1 * num2}")
prompt("#{num1} / #{num2} = #{num1 / num2}")
prompt("#{num1} % #{num2} = #{num1 % num2}")
prompt("#{num1} ** #{num2} = #{num1 ** num2}")