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
    add_players_to_game
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
    @players.each do |player|
      player.hand = Hand.new(@deck.take(5))
    end
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
  h2 = Player.new("Tommy Salami")
  Game.new(h1,h2).run
end