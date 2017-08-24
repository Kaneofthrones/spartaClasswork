require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/venue_controller.rb'

use Rack::reloader

use Rack::MethodOverride

run VenueController