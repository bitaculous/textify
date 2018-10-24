require 'csv'

# The CSV class, inherited from `Task`.
class Textify < Task
  desc 'csv', 'Generates text from CSV'
  def csv
    log 'Generating text from CSV...', :ok
  end
end