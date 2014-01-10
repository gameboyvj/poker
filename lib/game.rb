require_relative 'card'
require_relative 'deck'
require_relative 'hand'
require_relative 'player'

class Game
  attr_accessor :deck

  def initialize(*players)
    @deck = Deck.new
    @pot = 0
    @players = players
  end

  def run
    deal
    
    @players.each do |player|
      player.get_bet
    end
    
    @players.each do |player|
      player.prompt_switch
    end
    
    @players.each do |player|
      player.get_bet
    end
    
    pick_winner
  end

  def deal
  end

  def winner
  end

  def payout
  end
end