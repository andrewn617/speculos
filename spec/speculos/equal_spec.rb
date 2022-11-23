require_relative "../../lib/speculos/equal"

RSpec.describe Speculos::Equal do
  let(:matcher) { Speculos::Equal.new(1) }

  describe "#match" do
    it "is true if expected and actual are identical" do
      expect(matcher.match?(1)).to be true
    end

    it "is false if expect and actual are different" do
      expect(matcher.match?(2)).to be false
    end
  end
end
