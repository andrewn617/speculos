module Speculos
  module MatcherMethods; end

  class Matcher
    def self.register_matcher_methods(*method_names)
      method_names.each do |method_name|
        MatcherMethods.module_eval(<<~RUBY)
          def #{method_name}(*params)
            #{self}.new(*params)
          end
        RUBY
      end
    end
  end
end
