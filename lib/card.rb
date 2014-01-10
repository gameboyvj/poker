# -*- coding: utf-8 -*-

class Card
  SUIT_STRINGS = {
      :clubs    => "♣",
      :diamonds => "♦",
      :hearts   => "♥",
      :spades   => "♠"
    }

    VALUE_STRINGS = {
      :two   => 2,
      :three => 3,
      :four  => 4,
      :five  => 5,
      :six   => 6,
      :seven => 7,
      :eight => 8,
      :nine  => 9,
      :ten   => 10,
      :jack  => 11,
      :queen => 12,
      :king  => 13,
      :ace   => 14
    }

    attr_reader :suit, :value

    def initialize(suit, value)
      @suit = suit
      @value = value
    end

    def ==(other_card)
      @suit == other_card.suit && @value == other_card.value
    end
end