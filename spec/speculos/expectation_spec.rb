require_relative "../../lib/speculos/expectation"
require_relative "../../lib/speculos/equal"

RSpec.describe Speculos::Expectation do
  it "passes by default" do
    expectation = Speculos::Expectation.new(1)

    expect(expectation).to be_passed
  end

  it "passes given a positive match" do
    expectation = Speculos::Expectation.new(1)
    expectation.to(Speculos::Equal.new(1))

    expect(expectation).to be_passed
  end
end
