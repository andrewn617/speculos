require_relative "../../lib/speculos/example_group"
require_relative "../../lib/speculos/example"

RSpec.describe Speculos::Expectation do
  it "can run an example" do
    example_group = Speculos::ExampleGroup.new("runs an example")
    example_group.define do
      it "passes" do
        expect(1).to equal 1
      end
    end

    example_group.run

    expect(example_group).to be_passed
    expect(example_group.examples.count).to be 1
  end
end