module Speculos
  class Equal
    def initialize(expected)
      @expected = expected
    end

    def match?(actual)
      actual == @expected
    end
  end
end
