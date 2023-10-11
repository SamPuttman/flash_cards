class Turn
  attr_reader :guess, :card, :question, :answer
  def initialize(guess, card)
      @guess = guess
      @card = card
	end
	# correct? method
	def correct?
		guess == card.answer
	end
	#feedback method
		#include correct/incorrect based on answer variable
	def feedback
		if @guess == card.answer
			p "Correct!"
		else @guess != card.answer
			p "Incorrect."
		end
	end
end

