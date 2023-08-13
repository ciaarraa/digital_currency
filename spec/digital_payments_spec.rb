# frozen_string_literal: true

RSpec.describe DigitalPayments do
  it "has a version number" do
    expect(DigitalPayments::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  describe "#raise_an_error" do
    it "raises a standard error" do
      expect { described_class.raise_an_error }.to raise_error(StandardError)
    end
  end
end
