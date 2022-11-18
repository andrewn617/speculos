module Speculos
  class Example
    def initialize(description, definition)
      @description = description
      @definition = definition
      @expectations = []
    end

    def passed?
      @expectations.all?(&:passed?)
    end

    def failed?
      !passed?
    end
  end
end
