require_relative 'card.rb'
require_relative 'deck.rb'
require_relative 'hand.rb'
require_relative 'player.rb'

class Game
  attr_accessor :deck

  def initialize(*players)
    @deck = Deck.new
    @pot = 0
    @players = players
    add_players_to_game
  end

  def run
    
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

  
  private
  
  def add_players_to_game
    @players.each do |player|
      player.join_game(self)
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  h1 = Player.new("Mickey")
  h2 = Player.new("Other Guy")
  Game.new(h1,h2).run
end