require 'sinatra'
require 'sinatra' if development?
require_relative './controllers/posts_controller.rb'

run PostsController
