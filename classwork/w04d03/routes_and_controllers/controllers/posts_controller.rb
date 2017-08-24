#PostsController class inherits Sinatra Base methods
class PostsController < Sinatra::Base 

	$posts = [{
		id: 0, 
		title: "Post 1",
		content: "This is the first post",
		},
	{
		id: 1,
		title: "Post 2",
		content: "This is the second post"
	},
	{
		id: 2,
		title: "Post 3",
		content: "This is the third post"
	}]

	#sets root as the parent-directory of the current file
	set :root, File.join(File.dirname(__FILE__), '..')

	#sets the view directory correctly 
	set :views, Proc.new {File.join(root, 'views') }

	configure :development do 
		register Sinatra::Reloader
	end

	get '/' do 

		@title = "Blog Posts - - - - - -"

		@posts = $posts

		erb :'posts/index'

	end

	get '/new' do

		@post = {
			id: "",
			title: "",
			content: ""
		}

		erb :'posts/new_form'

	end

	get '/:id' do

		id = params[:id]

		@post = $posts[id.to_i]

		erb :'posts/show'
	

	end

	post '/' do 

		id =  $posts.length 

		new_post = {
			id: id,
			title: params[:title],
			content: params[:content]
		}

		$posts.push(new_post)

		redirect "/"

	end

	put '/:id' do

		id = params[:id].to_i

		post = $posts[id]

		# update the values of the object with data from the request
    	post[:title] = params[:title];
    	post[:content] = params[:content];
      
    	# save the post back to our data store ( at the spot it came from this time )
    	$posts[id] = post;
      
    	# redirect the user to a GET route. We'll go back to the INDEX.

		 redirect "/"

	end

	delete '/:id' do

		#get the id
		id = params[:id].to_i

		#delete the post from the array
		$posts.delete_at(id)

		#redirect back to the homepage
		redirect "/"
	end

	get '/:id/edit' do

		id = params[:id]

		@post = $posts[id.to_i]

		erb :'posts/edit'

	end

end