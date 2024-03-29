
class Card
  attr_reader :rank, :suit

  RANK_VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

  include Comparable

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value
    RANK_VALUES.index(rank)
  end

  def <=>(other)
    value <=> other.value 
  end

  def to_s
    "#{rank} of #{suit}"
  end

  # def ==(other)
  #   to_s == other.to_s
  # end
end

class Deck
  attr_accessor :cards

  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @cards = new_deck.shuffle
  end

  def new_deck
    deck = []
    RANKS.each do |rank|
      SUITS.each do |suit|
        deck.push(Card.new(rank, suit))
      end
    end
    deck
  end

  def draw
    self.cards = new_deck if cards.empty?
    cards.pop
  end
end

class PokerHand
  STRAIGHTS = (0..Deck::RANKS.size - 5).map do |idx|
                Deck::RANKS[idx, 5]
              end

  def initialize(deck)
    @deck = deck
    @hand = []
    deal_hand
  end

  def deal_hand
    5.times do |_|
      @hand << @deck.draw
    end
  end

  def print
    puts @hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  def hand_ranks
    @hand.map(&:rank)
  end

  def hand_rank_counts
    hand_ranks.tally
  end
  
  def number_of_same_suit
    @hand.map(&:suit).tally.max_by { |_, v| v }.last
  end

  def ace?
    hand_ranks.include?('Ace')
  end

  def royal_flush?
    straight_flush? && ace? 
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    hand_rank_counts.values.any?(4)
  end

  def full_house?
    pair? && three_of_a_kind?
  end
  
  def flush?
    number_of_same_suit == 5
  end

  def straight?
    STRAIGHTS.any? do |straight|
      straight.all? do |card|
        hand_ranks.include?(card)    
      end
    end
  end

  def three_of_a_kind?
    hand_rank_counts.values.any?(3)
  end

  def two_pair?
    hand_rank_counts.values.count(2) == 2
  end

  def pair?
    hand_rank_counts.values.any?(2)
  end
end

def display_info(hand_count, hand)
  puts "You got a royal flush on hand number #{hand_count} with the following cards:"
  puts "*" * 40
  hand.print
  puts "*" * 40
  puts "hand number reset\n\n"
end

hand_count = 0
hand = nil
royal_flush_count = 0

puts "Waiting for a royal flush..."

loop do
  hand_count += 1

  hand = PokerHand.new(Deck.new)
  if hand.evaluate == 'Royal flush'  
    royal_flush_count += 1 
    display_info(hand_count, hand)
    hand_count = 0
    puts "Waiting for another royal flush..." unless royal_flush_count >= 10
  end

  break if royal_flush_count >= 10
end

# Danger danger danger: monkey
# patching for testing purposes.
# class Array
#   alias_method :draw, :pop
# end

# Test that we can identify each PokerHand type.
# hand = PokerHand.new([
#   Card.new(10,      'Hearts'),
#   Card.new('Ace',   'Hearts'),
#   Card.new('Queen', 'Hearts'),
#   Card.new('King',  'Hearts'),
#   Card.new('Jack',  'Hearts')
# ])
# puts hand.evaluate == 'Royal flush'

# hand = PokerHand.new([
#   Card.new(8,       'Clubs'),
#   Card.new(9,       'Clubs'),
#   Card.new('Queen', 'Clubs'),
#   Card.new(10,      'Clubs'),
#   Card.new('Jack',  'Clubs')
# ])
# puts hand.evaluate == 'Straight flush'

# hand = PokerHand.new([
#   Card.new(3, 'Hearts'),
#   Card.new(3, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(3, 'Spades'),
#   Card.new(3, 'Diamonds')
# ])
# puts hand.evaluate == 'Four of a kind'

# hand = PokerHand.new([
#   Card.new(3, 'Hearts'),
#   Card.new(3, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(3, 'Spades'),
#   Card.new(5, 'Hearts')
# ])
# puts hand.evaluate == 'Full house'

# hand = PokerHand.new([
#   Card.new(10, 'Hearts'),
#   Card.new('Ace', 'Hearts'),
#   Card.new(2, 'Hearts'),
#   Card.new('King', 'Hearts'),
#   Card.new(3, 'Hearts')
# ])
# puts hand.evaluate == 'Flush'

# hand = PokerHand.new([
#   Card.new(8,      'Clubs'),
#   Card.new(9,      'Diamonds'),
#   Card.new(10,     'Clubs'),
#   Card.new(7,      'Hearts'),
#   Card.new('Jack', 'Clubs')
# ])
# puts hand.evaluate == 'Straight'

# hand = PokerHand.new([
#   Card.new('Queen', 'Clubs'),
#   Card.new('King',  'Diamonds'),
#   Card.new(10,      'Clubs'),
#   Card.new('Ace',   'Hearts'),
#   Card.new('Jack',  'Clubs')
# ])
# puts hand.evaluate == 'Straight'

# hand = PokerHand.new([
#   Card.new(3, 'Hearts'),
#   Card.new(3, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(3, 'Spades'),
#   Card.new(6, 'Diamonds')
# ])
# puts hand.evaluate == 'Three of a kind'

# hand = PokerHand.new([
#   Card.new(9, 'Hearts'),
#   Card.new(9, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(8, 'Spades'),
#   Card.new(5, 'Hearts')
# ])
# puts hand.evaluate == 'Two pair'

# hand = PokerHand.new([
#   Card.new(2, 'Hearts'),
#   Card.new(9, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(9, 'Spades'),
#   Card.new(3, 'Diamonds')
# ])
# puts hand.evaluate == 'Pair'

# hand = PokerHand.new([
#   Card.new(2,      'Hearts'),
#   Card.new('King', 'Clubs'),
#   Card.new(5,      'Diamonds'),
#   Card.new(9,      'Spades'),
#   Card.new(3,      'Diamonds')
# ])
# puts hand.evaluate == 'High card' 