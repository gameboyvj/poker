def straight_flush
  [Card.new(:spades, :two),Card.new(:spades, :three),Card.new(:spades, :four),Card.new(:spades, :five),Card.new(:spades, :six)]
end

def straight_flush_unordered
   [Card.new(:spades, :three),Card.new(:spades, :six),Card.new(:spades, :five),Card.new(:spades, :four),Card.new(:spades, :seven)]
end

def four
   [Card.new(:spades, :four),Card.new(:hearts, :four),Card.new(:clubs, :four),Card.new(:diamonds, :four)]
 end

def three
  [Card.new(:spades, :four),Card.new(:hearts, :four),Card.new(:clubs, :four)]
end

def pair
  [Card.new(:spades, :four),Card.new(:hearts, :four)]
end

def two_pair
  [Card.new(:spades, :four),Card.new(:hearts, :four),Card.new(:clubs, :five),Card.new(:diamonds, :five)]
end

def flush
  [Card.new(:spades, :ten),Card.new(:spades, :three),Card.new(:spades, :four),Card.new(:spades, :five),Card.new(:spades, :six)]
end

def straight
  [Card.new(:clubs, :two),Card.new(:spades, :three),Card.new(:spades, :four),Card.new(:spades, :five),Card.new(:spades, :six)]
end

def full_house
  [Card.new(:spades, :four),Card.new(:hearts, :four), Card.new(:spades, :three),Card.new(:hearts, :three),Card.new(:clubs, :three)]
end