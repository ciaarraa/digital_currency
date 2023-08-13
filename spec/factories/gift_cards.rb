# frozen_string_literal: true

require "~/digital_payments/lib/gift_card"
FactoryBot.define do
  factory :gift_card do
    brand { build(:brand) }
    face_value { 10 }
    initialize_with { new(**attributes) }
  end
end
