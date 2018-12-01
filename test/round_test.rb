require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    @deck = Deck.new(@cards)
    @round = Round.new(@deck)
  end

  def test_it_exists
    assert_instance_of Round, @round
  end

  def test_what_is_the_deck
    assert_equal @deck, @round.deck
  end

  def test_what_is_the_turn_array
    assert_equal [], @round.turns
  end

  def test_what_is_current_card
    assert_equal @card_1, @round.current_card
  end

  def test_what_is_new_turn_class
    new_turn = @round.take_turn("Juneau")

    assert_equal Turn , new_turn.class
  end

  def test_is_my_turns_array_getting_turns
    new_turn = @round.take_turn("Juneau")

    assert_instance_of EXPECTED, @round.turns
  end


end
