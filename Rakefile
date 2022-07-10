# frozen_string_literal: true

require 'dotenv/load'
require 'rake'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require './app/application'
require './lib/utils'

Dir['app/models/**/*.rb'].each do |filename|
  require_relative File.join('.', filename)
end
