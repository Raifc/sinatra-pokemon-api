# frozen_string_literal: true

require_relative '../../config/database'

# api/v1/pokemons
module PokemonsController
  def self.all
    final_object = { data: Pokemon.all }

    final_object.to_json
  end
end
