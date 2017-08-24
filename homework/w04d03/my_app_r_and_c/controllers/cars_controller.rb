class CarsController < Sinatra::Base 

	$cars = [{
		id: 0,
		make: "Acura",
		model: "MDX",
		picture: "http://st.motortrend.com/uploads/sites/10/2015/09/2014-Acura-MDX-front-three-quarter.jpg",
		},
	{
		id: 1,
		make: "Chevrolet",
		model: "impala",
		picture: "http://st.lowrider.com/uploads/sites/7/2013/10/1205-lrmp-02-o-1964-chevrolet-impala-SS-driver-side-view.jpg",
		},
	{
		id: 2,
		make: "Ferrari",
		model: "250 GTO",
		picture: "https://img06.deviantart.net/857b/i/2011/209/6/8/ferrari_60th___01_by_admcewen-d1cusm3.jpg"
	}]

	#set root as the parent directory of the current file
	set :root, File.join(File.dirname(__FILE__), '..')

	set :views, Proc.new {File.join(root, 'views') }

	configure :development do 
		register Sinatra::Reloader
	end

	get '/' do

    @title = "cars"

    @cars = $cars

    erb :'cars/index'

  end

  get '/new' do

		erb :'cars/new_car'

	end

  get '/:id' do

		id = params[:id]

		@car = $cars[id.to_i]
		
		erb :'cars/show'

	end

	post '/' do 

		id = $cars.length 

		new_car = {
			id: id,
			make: params[:make],
			model: params[:model]
		}

		$cars.push(new_car)

		redirect "/"

	end

		get '/:id/edit' do

		"EDIT: #{params[:id]}"

		# id = params[:id]

		# @car = $cars[id.to_i]

		erb :'cars/edit'

	end

	put '/:id' do

		"UPDATE: #{params[:id]}"

	end


end