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

deck = Deck.new

drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13 


drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.