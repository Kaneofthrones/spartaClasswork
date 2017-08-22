require 'sinatra'
require "sinatra/reloader" if development?

get "/" do 

	"Index"

end

get "/videos/new" do

	"New"

end

post "/" do

	"Create"

end

get "/videos/edit" do 

	"Edit"

end

put "/videos" do 

	"Update"

end

delete "/videos" do 

	"Delete"

end

get "/videos" do 

	"Show"

end



