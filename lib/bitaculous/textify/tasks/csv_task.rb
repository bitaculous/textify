# frozen_string_literal: true

require 'csv'
require_relative 'base_task'

module Bitaculous
  module Textify
    module Tasks
      # The CSV task class, inherited from `BaseTask`.
      class CsvTask < BaseTask
        desc 'generate', 'Generates text from CSV'
        def generate
          log 'Generating text from CSV...', :ok
        end
      end
    end
  end
end