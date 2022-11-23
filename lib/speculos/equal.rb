require_relative "matcher"

module Speculos
  class Equal < Matcher
    register_matcher_methods :eq, :equal, :contain_exactly

    def initialize(expected)
      @expected = expected
    end

    def match?(actual)
      actual == @expected
    end
  end
end
