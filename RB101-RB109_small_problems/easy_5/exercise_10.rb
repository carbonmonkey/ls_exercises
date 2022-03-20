MAX_LINE_LENGTH = 76

def break_into_lines(text)
  words = text.split
  lines = ['']
  line = 0

  loop do
    break if words.empty?
    if (lines[line].length + words.first.length) < MAX_LINE_LENGTH
      lines[line] << ' ' + words.shift
    else
      line += 1
      lines[line] = ''
    end
  end

  lines.map(&:strip)
end

def print_in_box(text)
  separate_lines = break_into_lines(text)
  longest_line = separate_lines.sort_by(&:length).last.length
  inner_box_width = text.length >= MAX_LINE_LENGTH ? longest_line + 2 : text.length + 2

  top_or_bottom_border = "+#{'-' * inner_box_width}+"
  side_borders = "|#{' ' * inner_box_width}|"

  puts top_or_bottom_border
  puts side_borders

  separate_lines.each do |line|
    puts "|#{line.center(inner_box_width, ' ')}|"
  end

  puts side_borders
  puts top_or_bottom_border
end

print_in_box('To boldly go where no one has gone before. Whubba lub dub dub '\
  'the cat and the hat the cow jumped over the moon whoopdie doo! Lorem ipsum '\
  'dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum dolor erat, '\
  'vel egestas tellus mollis ut. Donec vulputate, felis vitae lobortis fringilla, '\
  'ex ligula tempor diam, sed posuere lorem dui ac sapien. Vestibulum at '\
  'condimentum lectus. Vivamus imperdiet sapien ligula, at faucibus felis aliquam '\
  'et. Aliquam vitae mollis dui. Nam sit amet vulputate risus, ac sagittis ligula. '\
  'Maecenas ut mi bibendum, placerat dui sit amet, pharetra enim. Proin scelerisque '\
  'non sem lobortis convallis. Praesent non diam in nisi sagittis sagittis. Mauris '\
  'cursus felis nec lorem ornare volutpat. Donec id turpis neque. Nullam nunc arcu, '\
  'eleifend a maximus sed, vulputate id purus. Praesent eu mauris lacus. Mauris a '\
  'ornare lectus')

print_in_box('')
