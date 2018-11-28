require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck'


class Round
  attr_reader :deck
  attr_accessor :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card

  end

  def take_turn
  end

end
