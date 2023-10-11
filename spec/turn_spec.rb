require './lib/turn'
require './lib/card'
require 'pry'

RSpec.describe Card do
    it 'exists' do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      expect(card).to be_instance_of(Card)
    end
end
RSpec.describe Turn do
  it "Card_turned" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn).to be_instance_of(Turn)
  end
  it "check_card_method" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn.card).to be_instance_of(Card)
  end
  it "check_guess_method" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn.guess).to eq("Juneau")
  end
  it "check_if_correct_method" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn.correct?).to eq(true)
  end
  it "check_if_correct_method" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn.feedback).to eq("Correct")
  end
  it "check_if_correct_method" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Denver", card)
    expect(turn.feedback).to eq("Incorrect.")
  end
end
