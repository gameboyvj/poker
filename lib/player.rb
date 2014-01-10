require 'hand'

class Player
  attr_accessor :hand, :pot

  def initialize(pot = 0)
    @hand = []
    @pot = pot
  end

  def prompt
    puts "Which cards do you want to discard?"
    card_indices = gets.chomp.split(",").map(&:to_i)  
  end
  
  def fold
  end
  
  def see
  end
  
  def raise(amt)
  end
  
end