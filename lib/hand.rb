require 'deck'

class Hand
  HAND_VALUES = {
    pair: 0,
    two_pair: 1,
    three_of_a_kind: 2,
    straight: 3,
    flush: 4,
    full_house: 5,
    four_of_a_kind: 6,
    straight_flush: 7
  }

  attr_accessor :cards

  def initialize(cards = [])
    @cards = cards
  end

  def hand_type
    determine_hand
  end

  def hand_value
    HAND_VALUES[hand_type]
  end

  def beats?(other_hand)
    hand_value > other_hand.hand_value
  end

  private
  def determine_hand
    hand_type = nil

    value_hash = Hash.new {|h,k| h[k] = 0}
    suit_hash = Hash.new {|h,k| h[k] = 0}

    @cards.each do |card|
      value_hash[card.value] += 1
      suit_hash[card.suit] += 1
    end

    if value_hash.values.include?(4)
      hand_type = :four_of_a_kind
    elsif value_hash.values.include?(3) && value_hash.values.include?(2)
      hand_type = :full_house
    elsif value_hash.values.include?(3)
      hand_type = :three_of_a_kind
    elsif value_hash.values.select {|el| el == 2}.count == 2
      hand_type = :two_pair
    elsif value_hash.values.include?(2)
      hand_type = :pair

    elsif suit_hash.values.include?(5) && consecutive_values?(value_hash.keys)
      hand_type = :straight_flush
    elsif suit_hash.values.include?(5)
      hand_type = :flush
    elsif consecutive_values?(value_hash.keys)
      hand_type = :straight
    end

    hand_type
  end


  def consecutive_values?(symbols)
    num_values = symbols.map { |symbol|  Card::VALUE_STRINGS[symbol] }
    num_values.sort!
    num_values[-1]-num_values[0] == 4
  end
end