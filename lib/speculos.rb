# frozen_string_literal: true

require_relative "speculos/version"
require_relative "speculos/example_group"

module Speculos
  def self.describe(description, &definition)
    example_group = ExampleGroup.new(description)

    example_group.define(&definition)

    example_group.run

    puts "Describing #{example_group.description}"
    puts "#{example_group.examples.count} examples."
    puts "#{example_group.examples.count(&:passed?)} passed. #{example_group.examples.count(&:failed?)} failed."
  end
end
