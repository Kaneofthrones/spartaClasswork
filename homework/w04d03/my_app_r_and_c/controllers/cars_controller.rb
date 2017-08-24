class CarsController < Sinatra::Base 

	$cars = [{
		id: 0,
		make: "Acura",
		model: "MDX",
		},
	{
		id: 1,
		make: "Chevrolet",
		model: "impala",
		},
	{
		id: 2,
		make: "Ferrari",
		model: "250 GTO"
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

  get '/:id' do

		id = params[:id]

		@car = $cars[id.to_i]
		
		erb :'cars/show'

	end

	get '/new' do

		erb :'cars/new_car'

	end

	post '/' do 

		id =  $cars.length 

		new_car = {
			id: id,
			make: params[:make],
			model: params[:model]
		}

		$cars.push(new_car)

		redirect "/"

	end

end