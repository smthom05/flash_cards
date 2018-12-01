require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck'

class Round
  attr_reader :deck,
              :turns,
              :correct_answers

  def initialize(deck)
    @deck = deck
    @turns = []
    @correct_answers = []
    @number_correct = 0
  end

  def current_card
    @deck.cards[@turns.count]
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    @turns << new_turn

    return new_turn
  end

  def number_correct
    @correct_answers = []
    @turns.each do |turn|
      if turn.correct?
      @correct_answers << turn
      end
    end
      @correct_answers.count
  end

  def number_correct_by_category(category)
    number_correct
      correct_answers_by_category =  @correct_answers.find_all do |answer|
        answer.card.category == category
      end
    return correct_answers_by_category.count
  end
  
end
