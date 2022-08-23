# def cleanup(string)
#   space = ''
#   result = ''
#   string.chars.each do |char|
#     if ('a'..'z').include?(char)
#       result << (space + char)
#       space = ''
#     else
#       space = ' ' if space.empty?
#     end
#   end
#   result + space
# end


def cleanup(string)
  result = ''
  string.each_char do |char|
    if is_letter?(char)
      result << char
    else
      result << ' ' unless result.end_with?(' ')
    end
  end
  
  result
end

def is_letter?(char)
  ('a'..'z').cover?(char)
end

p cleanup("---what's my +*& line?") == ' what s my line '
