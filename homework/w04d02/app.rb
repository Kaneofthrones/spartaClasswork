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

get "/videos/1/edit" do 

	"Edit"

end

put "/videos/1" do 

	"Update"

end

delete "/videos/1" do 

	"Delete"

end

