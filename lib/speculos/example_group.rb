require_relative "example"

module Speculos
  class ExampleGroup
    attr_reader :description, :examples

    def initialize(description)
      @description = description
      @examples = []
    end

    def define(&definition)
      instance_eval(&definition)
    end

    def run
      @examples.each(&:run)
    end

    def passed?
      @examples.all?(&:passed?)
    end

    def failed?
      !passed?
    end

    def it(description, &definition)
      example = Speculos::Example.new(description)
      example.define(&definition)

      @examples << example
    end
  end
end
