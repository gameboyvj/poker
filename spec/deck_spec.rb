require 'deck'

describe Deck do
  subject(:deck) {Deck.new}

  it "contains 52 unique cards" do
    expect(deck.cards.uniq.count).to eq(52)
  end

  describe "#shuffle" do

    it "should shuffle" do
      deck.shuffle
      (deck.cards).should_not eq(Deck.new.cards)
    end
  end

  describe "#take" do
    it "returns an array of n card" do
      deck.take(2).count.should eq(2)
    end

    it "should remove n cards from deck" do
      deck.take(2)
      deck.cards.count.should eq(50)
    end

    it "returns cards from top of deck" do
      cards = deck.cards[-2..-1]
      deck.take(2).should eq(cards)
    end

  end
end