require_relative "../../lib/speculos/example"

RSpec.describe Speculos::Example do
  it "passes by default" do
    example = Speculos::Example.new("passes by default")

    expect(example).to be_passed
    expect(example).to_not be_failed
  end

  it "passes with a passed expectation" do
    example = Speculos::Example.new("passes with passed expectation")
    example.define { expect(1).to equal(1) }

    example.run

    expect(example).to be_passed
    expect(example.expectations.count).to eq 1
  end
end
