require_relative "../../lib/speculos/include"

RSpec.describe Speculos::Include do
  let(:matcher) { Speculos::Include.new("foo") }

  describe "#match?" do
    it "matches the right thing" do
      expect(matcher.match?(["foo", "bar"])).to be true
    end
  end
end
