# frozen_string_literal: true

require 'csv'

# CSV Parser
class CsvParser

  def parse_file(full_file_path)
    CSV.table(full_file_path)
  end

  def to_array_of_hashes(csv_table)
    csv_table.map(&:to_h)
  end
end
