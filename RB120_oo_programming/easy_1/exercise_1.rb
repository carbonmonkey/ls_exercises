class Banner
  def initialize(message, banner_width = message.size + 4)
    @message = message
    @banner_width = banner_width
    set_line_length
    @line_length = @banner_width - 2
    split_message
  end

  def to_s
    top = [horizontal_rule, empty_line]
    bottom = top.reverse
    (top + @lines + bottom).join("\n")
  end

  private

  def set_line_length
    longest_word = @message.split.max_by(&:size)
    longest_word = longest_word ? -2 : longest_word.size 
    if @banner_width > 100
      @banner_width = 100
    elsif @banner_width < longest_word + 4
      @banner_width = longest_word + 4
    end
  end

  def split_message
    @lines = []
    line = []
    words = @message.split
    loop do
      until line.join(' ').size > (@line_length - 2) || words.empty?
        line << words.shift
      end
      
      @lines << line
      line = line.join(' ').size > (@line_length - 2) ? [@lines.last.pop] : []
      break if words.empty?
    end
    @lines << line
    message_lines
  end

  def horizontal_rule
    "+#{'-' * @line_length}+" 
  end

  def empty_line
    "|#{' ' * @line_length}|" 
  end

  def message_lines
    @lines.map! do |line|
      line = line.join(' ')
      "|" + line.center(@line_length) + "|"
    end
  end
end

# banner = Banner.new('To boldly go where no one has gone before.', 2)
# puts banner
# banner = Banner.new('To boldly go where no one has gone before.', 15)
# puts banner
# banner = Banner.new('To boldly go where no one has gone before.', 27)
# puts banner
# banner = Banner.new('To boldly go where no one has gone before.', 423)
# puts banner
# banner = Banner.new('To boldly go where no one has gone before.', 42)
# puts banner
# banner = Banner.new('To boldly go where no one has gone before.', 77)
# puts banner


banner = Banner.new('')
puts banner