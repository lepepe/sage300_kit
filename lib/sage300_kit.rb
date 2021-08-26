# frozen_string_literal: true

require_relative "sage300_kit/version"

module Sage300Kit
  autoload :Client, "sage300_kit/client"
  autoload :Error, "sage300_kit/error"
  autoload :Object, "sage300_kit/object"
end
