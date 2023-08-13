# frozen_string_literal: true

require "~/digital_payments/lib/brand"
require "spec_helper"

FactoryBot.define do
  factory :brand do
    name { "Tesco" }
    discount { 0.1 }

    initialize_with { new(**attributes) }
  end
end
