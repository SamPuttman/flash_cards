# Round initialized with a deck
# when we start a round, current card is first in the deck
# when we guess, guess is recorded
# then, next card becomes current card

# take_turn method
## inputs a string representing a guess
## creates new turn object with the appropriate guess and card


class Round
  attr_reader :deck, :turns
  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    deck.cards.first
  end

  def take_turn(guess)
    @turns.push(guess)
  end

  # This works...? but breaks .correct? :(
  def turns_count
    p @turns.count
  end
  
end