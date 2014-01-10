require "hand"

describe Hand do

  describe "hand values" do
    cards = [ Card.new(:spade, :two),
              Card.new(:spade, :two),
              Card.new(:spade, :two),
              Card.new(:spade, :two),
              Card.new(:spade, :two)  ]

    subject(:hand) { Hand.new(cards) }

    it "should recognize a pair" do
      hand.hand_type.should eq(:pair)
    end

    it "should recognize a two pair" do
      hand.hand_type.should eq(:two_pair)
    end

    it "should recognize a three of a kind" do
      hand.hand_type.should eq(:three_of_a_kind)
    end

    it "should recognize a straight" do
      hand.hand_type.should eq(:straight)
    end

    it "should recognize a flush" do
      hand.hand_type.should eq(:flush)
    end

    it "should recognize a full house" do
      hand.hand_type.should eq(:full_house)
    end

    it "should recognize a four of a kind" do
      hand.hand_type.should eq(:four_of_a_kind)
    end

    it "should recognize a straight flush" do
      hand.hand_type.should eq(:straight_flush)
    end
  end

end