# frozen_string_literal: true

require "~/digital_payments/lib/basket"
require "spec_helper"

FactoryBot.define do
  factory :basket do
    transient do
      gift_cards { nil }
    end

    after(:build) do |basket, evaluator|
      evaluator.gift_cards&.each do |gift_card|
        basket.gift_cards << gift_card
      end
    end
  end
end
