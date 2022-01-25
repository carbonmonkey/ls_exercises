def stringy(length)
  string = ''

  length.times do 
    string.end_with?('1') ? string << '0' : string << '1'
  end

  string
end

# Further Exploration:

def stringy(length, first = 1)
  string = ''

  if first == 0
    length.times do 
      string.end_with?('0') ? string << '1' : string << '0'
    end
  else
    length.times do 
      string.end_with?('1') ? string << '0' : string << '1'
    end
  end

  string
end

puts stringy(6, 0) == '010101'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'