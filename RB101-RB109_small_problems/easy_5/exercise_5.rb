def cleanup(string)
  space = ''
  result = ''
  string.chars.each do |char|
    if ('a'..'z').include?(char)
      result << (space + char)
      space = ''
    else
      space = ' ' if space.empty?
    end
  end
  result + space
end

p cleanup("---what's my +*& line?") == ' what s my line '
