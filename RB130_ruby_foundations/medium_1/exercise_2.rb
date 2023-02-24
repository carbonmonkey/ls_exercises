class TextAnalyzer
  def process
    text = File.open('sample_text.txt')
    yield(text.read)
    text.close
  end
end

analyzer = TextAnalyzer.new

analyzer.process do |text|
  lines = text.split("\n")
  paragraphs = 1
  lines.each do |line|
    paragraphs += 1 if line.empty?
  end
  puts "#{paragraphs} paragraphs"
end

analyzer.process { |text| puts "#{text.split("\n\n").count } paragraphs" }

analyzer.process do |text|
  lines = text.split("\n").size
  puts "#{lines} lines"
end

analyzer.process { |text| puts "#{text.split("\n").size} lines" }

analyzer.process do |text|
  words = text.split.size
  puts "#{words} words"
end

analyzer.process { |text| puts "#{text.split.size} words" }

analyzer.process { |text| puts text }