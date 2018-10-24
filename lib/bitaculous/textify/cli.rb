# frozen_string_literal: true

require 'thor'
require_relative 'tasks/csv_task'

module Bitaculous
  module Textify
    # The CLI class, inherited from `Thor`.
    class CLI < Thor
      register Bitaculous::Textify::Tasks::CsvTask, 'csv', 'csv [COMMAND]', 'Generates text from CSV files'
    end
  end
end