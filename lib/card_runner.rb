require './lib/card'
require './lib/deck'
require './lib/turn'
require './lib/round'
require 'pry'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

cards = [card_1, card_2, card_3]

p card_1.question
p card_1.answer
p card_1.category

turn = Turn.new("Saturn", card_1)

p turn.card
p turn.guess
p turn.correct?
p turn.feedback

deck = Deck.new(cards)

