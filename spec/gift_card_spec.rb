# frozen_string_literal: true

require "spec_helper"

RSpec.describe "GiftCard" do
  describe ".price" do
    it "returns the cost of the card after the brand discount is applied" do
      brand = build(:brand, name: "Tesco", discount: 0.1)
      gift_card = build(:gift_card, brand:, face_value: 10)
      expect(gift_card.price).to eq(9)
    end

    it "returns the most recent price" do
      brand = build(:brand, name: "Tesco", discount: 0.1)
      gift_card = build(:gift_card, brand:, face_value: 10)

      brand.discount = 0.5
      expect(gift_card.price).to eq(5)
    end
  end
end
