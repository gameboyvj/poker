require_relative 'hand'

class Player
  attr_accessor :hand, :pot
  attr_reader :name

  def initialize(name, money = 0)
    @name = name
    @hand = nil
    @money = money
    @folded = false
    @game = nil
  end
  
  def join_game(game)
    @game = game
  end

  def get_bet
    puts "What do you want to do? (fold, see or raise)."
    action = gets.chomp
    
    fold(@game.deck) if action == "fold"
    see if action == "see"
    raise_bet if action == "raise"
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
    return_cards(@hand.cards, @game.deck)
    @hand = nil
  end

  def seer
  end

  def raise_bet
    puts "How much?"
    amt = gets.chomp.to_i
    @game.add_to_pot(amt)
  end

  def folded?
    @folded
  end

end