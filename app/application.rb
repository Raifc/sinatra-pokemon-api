# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv/load'
require_relative 'controllers/controllers'
require 'sinatra/contrib'

# Sinatra Application
class Application < Sinatra::Base
  register Sinatra::Namespace
  namespace '/api' do
    namespace '/v1' do
      before do
        content_type 'application/json'
      end

      namespace '/pokemons' do
        get '' do
          PokemonsController.all

        rescue StandardError => e
          puts e.inspect
          [
            500,
            { 'Content-Type' => 'application/json' },
            [{ message: 'Something went wrong' }.to_json]
          ]
        end
      end
    end
  end
end
