class PostsController < Sinatra::Base

	$venues = [{
		id: 0,
		name: "venue1",
		content: "nice decor",
		},
		{
		id: 1,
		name: "venue2",
		content: "mediocre decor",
		},
		{
		id: 2,
		name: "venue3",
		content: "banging"
		}]

	#sets root as the parent-directory of the current file
	set :root, File.join(File.dirname(__FILE__), '..')

	#sets the view directory correctly 
	set :views, Proc.new {File.join(root, 'views') }

	configure :development do 
		register Sinatra::Reloader
	end

	get '/' do 

		"index"

	end


	get '/new' do 

		"new"

	end

	get '/:id' do 

		"show"

	end

	post '/' do 

		"create"

	end 

	put '/:id' do 

		"update"

	end

	delete '/:id' do 

		"delete"

	end

	get '/:id/edit' do 

		"edit"

	end 










}