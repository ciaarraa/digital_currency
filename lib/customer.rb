# frozen_string_literal: true

require_relative "basket"
require_relative "gift_card"
class Customer
  attr_reader :basket

  def initialize
    @basket = Basket.new
  end

  def add_gift_card_to_basket(brand:, face_value:)
    gift_card = GiftCard.new(brand:, face_value:)
    @basket.add_gift_card(gift_card)
  end

  def basket_total_price
    @basket.total_price
  end
end
