def crunch(string)
  result = ''
  string.each_char do |char|
    # result << char if char != result[-1]
    result += char unless result.end_with?(char)
  end
  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
