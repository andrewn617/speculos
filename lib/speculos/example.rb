require_relative "expectation"
require_relative "equal"

module Speculos
  class Example
    attr_reader :description, :expectations

    def initialize(description)
      @description = description
      @expectations = []
    end

    def define(&definition)
      define_singleton_method(:run, &definition)
    end

    def run; end

    def passed?
      @expectations.all?(&:passed?)
    end

    def failed?
      !passed?
    end

    def expect(actual)
      expectation = Speculos::Expectation.new(actual)

      @expectations << expectation

      expectation
    end

    def equal(expected)
      Speculos::Equal.new(expected)
    end
  end
end
