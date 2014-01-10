require 'hand'

class Player
  attr_accessor :hand, :pot

  def initialize(money = 0)
    @hand = nil
    @money = money
    @folded = false
  end

  def get_bet
    puts "What do you want to do? (fold, see or raise)"
    option = gets.chomp
    fold(deck) if option == "fold"
    see if option == "see"
    rais if option == "raise"
  end

  def prompt_switch
    puts "Which cards do you want to discard?"
    card_indices = gets.chomp.split(",").map(&:to_i)

    card_indices.each do |i|
      return_cards(@hand.cards.delete_at(i), deck)
    end
  end

  def return_cards(cards, deck)
    deck.return_cards(cards)
  end

  def fold(deck)
    @folded = true
    return_cards(@hand.cards, deck)
    @hand = nil
  end


  def see
  end

  def rais
    puts "How much?"
    amt = gets.chomp.to_i
  end

  def folded?
    @folded
  end

end