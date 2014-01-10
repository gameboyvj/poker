require 'player'

describe Player do
  subject(:player) {Player.new}

  describe "#return_cards" do
    let(:deck) { double("deck", :return_cards => nil) }
    let(:cards) { double("cards") }

    it "should return the cards to the deck" do
      deck.should_receive(:return_cards).with(cards)
      player.return_cards(cards, deck)
    end
  end

  describe "fold" do
    let(:deck) { double("deck") }

     it "should set player's hand to nil" do
       player.hand = "something"
       player.fold(deck)
       player.hand.should eq(nil)
     end
  end

  describe "see" do
    it "should bet the last amt and deduct from @money"
    it "should add to the Game#pot"
  end

  describe "rais" do
    it "should deduct the last amt and the raised amt from @money "
    it "should add to the Game#pot"
  end


end