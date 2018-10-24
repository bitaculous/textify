# frozen_string_literal: true

require 'bitaculous/thorify/task'
require 'yaml'

module Bitaculous
  module Textify
    module Tasks
      # The base task class, inherited from `Bitaculous::Thorify::Task`.
      class BaseTask < Bitaculous::Thorify::Task
        attr_reader :data_file, :data, :sources_directory, :blocks_directory, :output_directory

        def initialize(*args)
          super

          @data_file         = File.expand_path 'data.yml', Dir.pwd
          @data              = File.file?(@data_file) ? YAML.load_file(@data_file) : {}
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