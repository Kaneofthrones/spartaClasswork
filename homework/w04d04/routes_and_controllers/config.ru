require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/venue_controller.rb'

use Rack::Reloader

use Rack::MethodOverride

run VenueController