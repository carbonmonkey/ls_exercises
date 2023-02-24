=begin
problem:
- generates lyrics of 99 bottles of beer

examples/test cases:
- Need a BeerSong class
- a verse method that ouputs the verse number of its argument
- a verses method that takes two verse numbers and returns all the verses between the numbers inclusive
- a lyrics class method that returns the lyrics of the entire song
- verse numbers 1 and 0 have different words


data structures:
integers(verse numbers)
heredocs
verses

algorithm:
- create heredocs for verse 1 and 0

- ::verse
  - if the argument is 0 or 1, return the verse for that number
  - otherwise, return a heredoc with the argument interpolated

- ::verses
  - iterate from the smaller number to the larger number
    - invoke the #verse method with the current number
    - place the return value into an array of verses
  - reverse the array of verses
  - join the verses together with a newline

- ::lyrics
  - invloke the verses method with arguments 0 and 99

=end

class BeerSong
  VERSE_1 = <<~VERSE
    1 bottle of beer on the wall, 1 bottle of beer.
    Take it down and pass it around, no more bottles of beer on the wall.
  VERSE

  VERSE_0 = <<~VERSE
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.
  VERSE

  def self.verse(num)
    case num
    when 0 then VERSE_0
    when 1 then VERSE_1
    else        make_verse(num)
    end
  end

  def self.verses(*nums)
    (nums.min..nums.max).map do |num|
      verse(num)
    end.reverse.join("\n")
  end

  def self.lyrics
    verses(0, 99)
  end

  private

  class << self
    def make_verse(num)
      <<~VERSE
      #{num} bottles of beer on the wall, #{num} bottles of beer.
      Take one down and pass it around, #{num - 1} bottle#{num == 2 ? '' : 's'} \
      of beer on the wall.
      VERSE
    end
  end
end

