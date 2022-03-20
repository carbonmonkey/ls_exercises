# def ascii_value(string)
#   ascii_total = 0

#   string.chars.each do |char|
#     ascii_total += char.ord
#   end

#   ascii_total
# end

# def ascii_value(string)
#   string.chars.map(&:ord).sum
# end

def ascii_value(string)
  return 0 if string.empty?

  ascii_value(string[1..-1]) + string.ord
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# further exploration:
'a'.ord.chr     # => "a"
'apple'.ord.chr # => "a"
