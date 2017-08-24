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

    "Hello World2"

    @title = "cars"

    # @cars = $cars


  end

end