require_relative "../../lib/speculos/example"

RSpec.describe Speculos::Example do
  it "passes by default" do
    example = Speculos::Example.new("passes by default", -> { nil })

    expect(example).to be_passed
    expect(example).to_not be_failed
  end
end
