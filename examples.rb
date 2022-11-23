require_relative "lib/speculos"

Speculos.describe "Example Spec" do
  it "passes" do
    expect(1).to equal(1)
  end

  it "fails" do
    expect(2).to equal(3)
  end

  it "does something more complicated" do
    array_1 = [1, 2, 3]
    array_2 = [1, 2]
    array_3 = [3]

    array_4 = array_2 + array_3

    expect(array_4).to equal(array_1)
  end
end
