require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'

class DeckTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card_1, @card_2, @card_3]
  end

  def test_it_exists
    deck = Deck.new(@cards)

    assert_instance_of Deck, deck
  end

  def test_what_are_the_cards
    deck = Deck.new(@cards)

    assert_equal @cards, deck.cards
  end

  def test_what_is_the_count
    deck = Deck.new(@cards)

    assert_equal 3, deck.count
  end

  def test_cards_in_category_stem
    deck = Deck.new(@cards)

    assert_equal [@card_2, @card_3], deck.cards_in_category(:STEM)
  end
end
