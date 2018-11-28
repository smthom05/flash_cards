require 'pry'
require './lib/card'
require './lib/turn'

class Deck
  attr_reader :cards,
              :count

  attr_accessor :categories

def initialize(cards)
  @cards = cards
  @count = cards.count
  @categories = []
end

def cards_in_category(category)
  cards.each do |card|
    if category == card.category
      @categories << card
    end
  end
  return @categories
end

end
