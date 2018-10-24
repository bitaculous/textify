# frozen_string_literal: true

require 'csv'
require 'erb'
require 'tilt'
require_relative 'base_task'

module Bitaculous
  module Textify
    module Tasks
      # The CSV task class, inherited from `BaseTask`.
      class CsvTask < BaseTask
        BLOCK_FILES_REGEX = '*.erb'

        CSV_FILES_REGEX = '*.csv'

        CSV_PARSE_OPTIONS = {
          headers: true,
          col_sep: ';'
        }.freeze

        desc 'generate', 'Generates text from CSV files'
        method_option :override, type: :boolean, description: 'Overrides output', default: true, aliases: '-f'
        def generate
          block_files = Dir["#{blocks_directory}/#{BLOCK_FILES_REGEX}"]
          csv_files   = Dir["#{sources_directory}/#{CSV_FILES_REGEX}"]

          log "Found #{csv_files.count} CSV file(s).", :info

          csv_files.each do |csv_file|
            csv_file_basename    = File.basename(csv_file)
            output_file          = "#{output_directory}/#{File.basename(csv_file, '.*')}.txt"
            output_file_basename = File.basename(output_file)
            mode                 = options[:override] ? 'w' : 'a'

            log "Processing file `#{csv_file_basename}`...", :info

            File.open(output_file, mode) do |writer|
              csv = CSV.parse(File.read(csv_file), CSV_PARSE_OPTIONS)

              csv.each do |row|
                block_files.each do |block_file|
                  template = Tilt.new(block_file)

                  writer.puts template.render(self, row: row, data: data)
                end
              end
            end

            log "File `#{csv_file_basename}` processed and `#{output_file_basename}` generated.", :ok
          end
        end
      end
    end
  end
end