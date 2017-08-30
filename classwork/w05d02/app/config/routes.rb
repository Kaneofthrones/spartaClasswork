Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/books", to: "books#index"

get "/books/new", to: "books#new"

post "/books", to: "books#create"

get "/books/:num/edit", to: "books#edit"

get "/books/show", to: "books#show"

put "/books/:num", to: "books#update"

delete "/books/:num", to: "books#destroy"



end


# get "/" do

# end

# get "/:id" do

# end

# get "/new" do

# end

# post "/" do

# end

# get "/:id/edit" do

# end

# update "/:id" do

# end

# delete "/:id" do 

# end