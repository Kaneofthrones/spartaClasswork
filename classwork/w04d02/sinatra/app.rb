require "sinatra"
require "sinatra/reloader" if development?

get "/books" do

	"INDEX" 
	
end 

get "/books/new" do	

	"new"

end

post "/books" do

	"create"

end

get "/books/4" do	

	"show"

end

get "/books/5/edit" do

	"edit"

end
 
put "/books" do	

 	"update"

end

delete "/books/7" do	

	"destroy"

end
















