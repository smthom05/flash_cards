require 'pry'
require './lib/card'

class Turn
  attr_reader :guess,
              :card

  def initialize(string, card)
    @guess = string
    @card = card
  end

  def correct?
    if @guess == card.answer
      return true
    else
      return false
    end
  end

  def feedback
    if  @guess == @card.answer
      "Correct!"
    else
      "WRONG!"
    end
  end

end
