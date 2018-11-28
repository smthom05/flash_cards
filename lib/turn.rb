class Turn
  attr_reader :guess
              :card

  def initialize(string, card)
    @guess = string
    @card = card
  end

  def correct?
  end

  def feedback
    if  @guess == @card.answer
      "Correct!"
    else
      "WRONG!"
    end
  end

end
