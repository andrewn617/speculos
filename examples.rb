require_relative "lib/speculos"

Speculos.describe "Example Spec" do
  it "passes" do
    expect(1).to equal(1)
  end

  it "fails" do
    expect(2).to equal(3)
  end

  it "does something more complicated" do
    array = [1, 2, 3]

    expect(array).to include(1)
  end

  it "can have two expectations" do
    expect(0).to equal(0)
    expect(100).to equal(100)
  end
end
