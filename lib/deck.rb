class Deck
	attr_reader :cards
  def initialize(cards)
    @cards = cards
	end

# deck count method
  def count
    cards.count
  end
# category method
  # needs to put cards into a category
  # also needs to count cards in category
  def cards_in_category(category)
    @cards.select { |card| card.category == category}
  end
end
