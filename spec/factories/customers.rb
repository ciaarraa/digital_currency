# frozen_string_literal: true

require "~/digital_payments/lib/customer"

FactoryBot.define do
  factory :customer do
    transient do
      gift_cards { nil }
    end

    after(:build) do |customer, evaluator|
      evaluator.gift_cards&.each do |gift_card|
        customer.basket.gift_cards << gift_card
      end
    end

    initialize_with { new(**attributes) }
  end
end
