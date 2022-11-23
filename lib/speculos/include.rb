module Speculos
  class Include
    def initialize(expected)
      @expected = expected
    end

    def match?(actual)
      actual.include?(@expected)
    end
  end
end