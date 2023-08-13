# frozen_string_literal: true

require "spec_helper"

RSpec.describe "Basket" do
  describe ".total_price" do
    it "returns the total amount to be paid for the contents of the basket" do
      gift_card = build(:gift_card, face_value: 10)
      apple_gift_card = build(:gift_card, face_value: 50)
      basket = build(:basket, gift_cards: [gift_card, apple_gift_card])

      expect(apple_gift_card).to receive(:price).and_return(10)
      expect(gift_card).to receive(:price).and_return(5)
      expect(basket.total_price).to eq(15)
    end
  end

  describe ".add_gift_card" do
    it "adds a gift card to the basket" do
      tesco_gift_card = build(:gift_card, face_value: 10)
      basket = build(:basket)
      basket.add_gift_card(tesco_gift_card)

      expect(basket.gift_cards.length).to eq(1)
    end
  end
end

