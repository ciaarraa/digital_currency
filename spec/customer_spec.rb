# frozen_string_literal: true

require "spec_helper"

RSpec.describe "Customer" do
  describe "#add_gift_card_to_basket" do
    it "adds a gift card to the basket" do
      customer = build(:customer)
      brand = build(:brand, name: "Tesco", discount: 0.1)
      customer.add_gift_card_to_basket(brand:, face_value: 10)
      expect(customer.basket.size).to eq(1)
    end
  end

  describe "#basket_total_price" do
    it "returns the price of all of the gift cards in the basket" do
      gift_cards = build_list(:gift_card, 2, face_value: 10)
      expect(gift_cards[0]).to receive(:price).and_return(9)
      expect(gift_cards[1]).to receive(:price).and_return(9)
      customer = build(:customer, gift_cards:)
      expect(customer.basket_total_price).to eq(18)
    end
  end
end
