# frozen_string_literal: true

require_relative "digital_payments/version"
require "~/digital_payments/lib/customer"
require "~/digital_payments/lib/brand"

module DigitalPayments
  class Error < StandardError; end

  def raise_an_error
    raise(StandardError, "This is an exception")
  end

  alan = Customer.new
  tesco = Brand.new(name: "Tesco", discount: 0.1)
  alan.add_gift_card_to_basket(brand: tesco, face_value: 25)

  apple = Brand.new(name: "Apple", discount: 0.05)
  alan.add_gift_card_to_basket(brand: apple, face_value: 100)

  alan.basket_total_price
  puts(alan.basket_total_price)
end
