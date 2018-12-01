require 'pry'
require './lib/round'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
card_4 = Card.new("What is Virginia Tech's Mascot?", "Hokies", :Sports)
card_5 = Card.new("What is Denver's professional football team?", "Broncos", :Sports)
card_6 = Card.new("What is the capital of Pennsylvania", "Harrisburg", :Geography)

cards = [card_1, card_2, card_3, card_4, card_5, card_6]

deck = Deck.new(cards)
round = Round.new(deck)

round.start
