class Round
  attr_reader :cards, :deck
  def initialize(deck)
    @deck = deck
  end
  def turns()
    turns << []
  end
end