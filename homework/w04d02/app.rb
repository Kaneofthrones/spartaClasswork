require 'sinatra'
require "sinatra/reloader" if development?

get "/videos" do 

	"Index"

end

get "/videos/new" do

	"New"

end

post "/videos" do

	"Create"

end

