require "hand"
require "spec_helper"

describe Hand do

  describe "hand values" do

    it "should recognize a pair" do
      hand = Hand.new(pair)
      hand.hand_type.should eq(:pair)
    end

    describe "two_pair" do
      it "should recognize a two pair" do
        hand = Hand.new(two_pair)
        hand.hand_type.should eq(:two_pair)
      end

      it "should recognize two pair isn't one pair" do
        hand = Hand.new(two_pair)
        hand.hand_type.should_not eq(:pair)
      end
    end

    it "should recognize a three of a kind" do
      hand = Hand.new(three)
      hand.hand_type.should eq(:three_of_a_kind)
    end

    it "should recognize a straight" do
      hand = Hand.new(straight)
      hand.hand_type.should eq(:straight)
    end

    it "should recognize a flush" do
      hand = Hand.new(flush)
      hand.hand_type.should eq(:flush)
    end

    describe "full house" do
      it "should recognize a full house" do
        hand = Hand.new(full_house)
        hand.hand_type.should eq(:full_house)
      end

      it "should recognize full house is not three of a kind" do
        hand = Hand.new(full_house)
        hand.hand_type.should_not eq(:three_of_a_kind)
      end
    end

    it "should recognize a four of a kind" do
      hand = Hand.new(four)
      hand.hand_type.should eq(:four_of_a_kind)
    end

    it "should recognize a straight flush" do
      hand = Hand.new(straight_flush)
      hand.hand_type.should eq(:straight_flush)
    end

    it "should recognize a straight flush unordered" do
      hand = Hand.new(straight_flush_unordered)
      hand.hand_type.should eq(:straight_flush)
    end
  end

end