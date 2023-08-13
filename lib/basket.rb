# frozen_string_literal: true

class Basket
  attr_reader :gift_cards

  def initialize
    @gift_cards = []
  end

  def add_gift_card(gift_card)
    @gift_cards << gift_card
  end

  def total_price
    @gift_cards.map(&:price).sum
  end

  def size
    @gift_cards.length
  end
end
