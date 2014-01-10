require 'card'

class Deck
  attr_accessor :cards

  def self.all_cards
    cards = []
    Card::SUIT_STRINGS.each_key do |suit|
      Card::VALUE_STRINGS.each_key do |value|
        cards << Card.new(suit, value)
      end
    end
    cards
  end

  def initialize(cards = Deck.all_cards)
    @cards = cards
    shuffle
  end

  def shuffle
    @cards.shuffle!
  end

  def take(n)
    cards = []
    n.times {cards << @cards.pop}
    cards
  end

  def return_cards(cards)
    @cards = cards + @cards
  end
end