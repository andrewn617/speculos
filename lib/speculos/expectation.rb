module Speculos
  class Expectation
    def initialize(actual)
      @actual = actual
    end

    def to(matcher)
      @matcher = matcher
    end

    def not
      define_singleton_method(:passed?) do
        return true unless @matcher

        !@matcher.match?(@actual)
      end

      self
    end

    def passed?
      return true unless @matcher

      @matcher.match?(@actual)
    end

    def failed?
      !passed?
    end
  end
end
