=begin
problem:
- input is a word
- output is the scrabble score for the word
rules:
- letter values:
A, E, I, O, U, L, N, R, S T --> 1
D, G                        --> 2
B, C, M, P                  --> 3
F, H, V, W, Y               --> 4
K                           --> 5
J, X                        --> 8
Q, Z                        --> 10

Examples/test cases:
- constructor method takes a string argument
- Scrabble#score returns a score for that string
- input is not case sensitive
- an input of nil returns a score of 0
- whitespace chars score 0
- there are no test cases in which exceptions are raised
- Scrabble::score takes a string argument and returns a score

data structures:
string(word)

hash of regex patterns and values

integer(score)

algorithm:
- constructor:
  - saves string input(downcase)
  - score attribute with getter method

- reference hash:
  - regex keys and score values

- set_score method:
  - tallys score using hash
  - iterate through the ref hash
    - count the number of letters in the string are in the current key
    - increment the a score tracker by the result times the hash value
  - set the score attribute to the score tracker

- score class method:
  - instantiate a scrabble word using the string argument, and invoke Scrabble#score on it

=end

class Scrabble
  attr_reader :score

  EXPS_N_POINTS = {
    /[aeioulnrst]/ => 1,
    /[dg]/         => 2,
    /[bcmp]/       => 3,
    /[fhvwy]/      => 4,
    /k/            => 5,
    /[jx]/         => 8,
    /[qz]/         => 10
  }

  def initialize(word)
    @word = word
    @score = self.class.score(word)
  end

  def self.score(word)
    return 0 unless word.instance_of?(String)
    EXPS_N_POINTS.reduce(0) do |acc, (exp, score)|
      acc + word.downcase.scan(exp).size * score
    end
  end
end