require_relative "matcher"

module Speculos
  class Include < Matcher
    register_matcher_methods :include

    def initialize(expected)
      @expected = expected
    end

    def match?(actual)
      actual.include?(@expected)
    end
  end
end
