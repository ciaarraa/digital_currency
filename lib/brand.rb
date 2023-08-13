# frozen_string_literal: true

class Brand
  attr_accessor :discount

  def initialize(name:, discount:)
    @name = name
    @discount = discount
  end
end
