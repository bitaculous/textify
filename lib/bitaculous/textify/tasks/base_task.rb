# frozen_string_literal: true

require 'bitaculous/thorify/task'

module Bitaculous
  module Textify
    module Tasks
      # The base task class, inherited from `Bitaculous::Thorify::Task`.
      class BaseTask < Bitaculous::Thorify::Task
        attr_reader :sources_directory, :blocks_directory, :output_directory

        def initialize(*args)
          super

          @sources_directory = File.expand_path 'sources', Dir.pwd
          @blocks_directory  = File.expand_path 'blocks', Dir.pwd
          @output_directory  = File.expand_path 'output', Dir.pwd
        end

        no_commands do
          # ...
        end
      end
    end
  end
end