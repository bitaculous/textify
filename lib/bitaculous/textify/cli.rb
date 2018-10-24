# frozen_string_literal: true

require 'thor'
require_relative 'tasks/csv_task'

module Bitaculous
  module Textify
    # The CLI class, inherited from `Thor`.
    class CLI < Thor
      desc 'csv [COMMANDS]', 'CSV task'
      subcommand 'csv', Bitaculous::Textify::Tasks::CsvTask
    end
  end
end