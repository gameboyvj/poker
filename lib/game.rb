require_relative 'card'
require_relative 'deck'
require_relative 'hand'
require_relative 'player'

class Game
  def initialize(*players)
    @deck = Deck.new
    @pot = 0
    @players = players
  end

  def run
  end

  def deal
  end

  def winner
  end

  def payout
  end
end