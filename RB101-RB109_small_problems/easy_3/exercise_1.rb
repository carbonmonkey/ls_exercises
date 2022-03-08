def valid_integer?(string)
  while string.start_with?('0')
    string = string.delete_prefix('0')
  end
  string.to_i.to_s == string
end

numbers = []
number_names = %w(1st 2nd 3rd 4th 5th last)

until number_names.empty?
  number_name = number_names.shift

  loop do
    puts "==> Enter the #{number_name} number."
    number = gets.chomp.strip

    if valid_integer?(number)
      numbers << number.to_i
      break

    else
      puts "Not valid. Please enter an integer."

    end
  end
end

last_number = numbers.pop

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."

else
  puts "The number #{last_number} does not appear in #{numbers}."

end
