# frozen_string_literal: true

require 'sinatra/activerecord'

Dir["app/models/**/*.rb"].each do |filename|
  require_relative File.join('..', filename)
end
