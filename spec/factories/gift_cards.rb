# frozen_string_literal: true

FactoryBot.define do
  factory :gift_card, class: "Models::GiftCard" do
    number { SecureRandom.uuid }
    expiry { Date.today(+1) }
    account_id { -1 }
  end
end
