require_relative 'card'
require_relative 'deck'
require_relative 'hand'
require_relative 'player'

class Game
  attr_reader :deck

  def initialize(*players)
    @deck = Deck.new
    @pot = 0
    @players = players
    add_players_to_game
  end

  def run
    deal
    
    @players.each do |player|
      next if player.folded?
      puts "#{player.name}'s hand:" 
      player.hand.display
    end

    @players.each do |player|
      next if player.folded?
      puts "#{player.name}:"      
      player.get_bet
    end
    
    @players.each do |player|
      next if player.folded?
      puts "#{player.name}:"  
      player.prompt_switch
    end
    
    @players.each do |player|
      next if player.folded?
      puts "#{player.name}:"  
      player.get_bet
    end
    
    p winner
  end

  def deal
    @players.each do |player|
      player.hand = Hand.new(@deck.take(5))
    end
  end

  def winner
    highest_hand = nil
    winner = nil
    
    @players.each do |player|
      unless player.folded?
        highest_hand = player.hand
        break
      end
    end
    
    @players.each do |player|
      next if player.folded?
      winner = player if player.hand.beats?(highest_hand)
    end
    
    winner
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