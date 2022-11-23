require_relative "expectation"
require_relative "equal"
require_relative "include"

module Speculos
  class Example
    attr_reader :description, :expectations

    def initialize(description, definition)
      @description = description
      @definition = definition
      @expectations = []
    end

    def run
      instance_exec(&@definition)
    end

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

    def include(expected)
      Speculos::Include.new(expected)
    end
  end
end
