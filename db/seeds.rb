require_relative '../lib/utils/csv_parser'

csv_parser = CsvParser.new

parsed_file = csv_parser.parse_file('db/seeds/pokemons.csv')

pokemons_hashes = csv_parser.to_array_of_hashes(parsed_file)

pokemons_hashes.each do |csv_row|
  Pokemon.create!(csv_row)
end
