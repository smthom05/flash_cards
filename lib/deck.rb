require 'pry'

class Deck
  attr_reader :cards,
              :count

  def initialize(cards)
    @cards = cards
    @count = cards.count
  end

  def cards_in_category(category)
    categories = []
    cards.each do |card|
      if category == card.category
        categories << card
      end
    end
    return categories
  end

end
