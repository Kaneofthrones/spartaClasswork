require 'sinatra'
require 'pg'
require 'sinatra/reloader' if development?
require_relative './models/review.rb'
require_relative './controllers/review_controller.rb'

use Rack::MethodOverride


run ReviewController