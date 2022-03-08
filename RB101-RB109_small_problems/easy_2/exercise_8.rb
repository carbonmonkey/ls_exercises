def prompt(string)
  puts ">> #{string}"
end

def valid_integer?(string)
  string = string.strip

  while string.start_with?('0')
    string = string.delete_prefix('0')
  end

  (string.to_i.to_s == string) && string.to_i > 0
end

def get_number
  loop do
    prompt("Please enter an integer greater than 0:")
    reply = gets.chomp

    return reply.to_i if valid_integer?(reply)

    prompt("Hmmm. Something doesn't seem right here. Try again.")
  end
end

def get_operation
  loop do
    prompt("Enter 's' to compute the sum, 'p' to compute the product.")
    reply = gets.chomp.strip.downcase

    if reply == 's'
      return 'sum'

    elsif reply == 'p'
      return 'product'

    else
      prompt("Oopsie. We have a problem here. Try again please.")

    end
  end
end

number = get_number
numbers = (1..number).to_a

operation = get_operation

if operation == 'sum'
  result = numbers.reduce { |a, b| a + b }
else
  result = numbers.reduce(:*)
end

puts "The #{operation} of the integers between 1 and #{number} is #{result}."
