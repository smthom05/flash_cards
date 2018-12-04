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

    def percent_correct
      number_correct

      percent = (@correct_answers.count / @turns.count.to_f) * 100
      return percent.round(1)
    end

    def percent_correct_by_category(category)
      number_correct

      percent_category = @turns.find_all do |turn|
        turn.card.category == category
      end
      ((number_correct_by_category(category) / percent_category.count.to_f) * 100).round(1)
    end

    def start
      puts "Welcome! You're playing with #{@deck.count} cards."
      puts "-------------------------------------------------"

      @deck.cards.each do |card|
      puts "This is card number #{@turns.count + 1} out of #{@deck.count}."
      puts "Question: #{current_card.question}"
      answer = gets.capitalize.chomp
      turn = take_turn(answer)
      puts turn.feedback
      end
      puts "****** Game over! ******"
      puts "You had #{number_correct} correct guesses out of #{@deck.count} for a total score of #{percent_correct}%."
      puts " Geography: #{percent_correct_by_category(:Geography)}% correct"
      puts "STEM: #{percent_correct_by_category(:STEM)}% correct"
      puts "Sports: #{percent_correct_by_category(:Sports)}% correct"
    end

  end
