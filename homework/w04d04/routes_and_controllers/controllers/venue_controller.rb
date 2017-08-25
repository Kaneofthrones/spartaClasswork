class VenueController < Sinatra::Base

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

		@title = "Venue_Review"

		@venues = $venues

		erb :'venues/index'

	end

	get '/new' do 

		@venue = {
			id: "",
			name: "",
			content: ""
		}

		erb :'venues/new_venue'

	end

	get '/:id' do 

		id = params[:id]

		@venue = $venues[id.to_i]

		erb :'venues/show'

	end

	post '/' do 
		#id equal to the length of the hash
		id = $venues.length

		new_venue = {
			id: id,
			name: params[:name],
			content: params[:content]
		}

		$venues.push(new_venue)

		redirect "/"

	end 

	put '/:id' do 

		id = params[:id].to_i

		venue = $venues[id]

		# update the values of the object with data from the request
  	venue[:name] = params[:name];
  	venue[:content] = params[:content];
    
  	# save the post back to our data store ( at the spot it came from this time )
  	$venues[id] = venue;
    
  	# redirect the user to a GET route. We'll go back to the INDEX.
	  redirect "/"

	end

	delete '/:id' do 

		#get the id
		id = params[:id].to_i

		#delete the post from the array
		$venues.delete_at(id)

		#redirect back to the homepage
		redirect "/"

	end

	get '/:id/edit' do 

		id = params[:id]

		@venue = $venues[id.to_i]

		erb :'venues/edit'

	end 

end








