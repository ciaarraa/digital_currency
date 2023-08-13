# frozen_string_literal: true

class GiftCard
  attr_reader :face_value, :brand

  def initialize(brand:, face_value:)
    @face_value = face_value
    @brand = brand
  end

  def price
    (1 - @brand.discount) * @face_value
  end
end
