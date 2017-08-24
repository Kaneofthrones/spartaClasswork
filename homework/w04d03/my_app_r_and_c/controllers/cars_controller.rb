class CarsController < Sinatra::Base 

	$cars = [{
		id: 0,
		make: " ",
		model: ""
	}]

	#set root as the parent directory of the current file
	set :root, File.join(File.dirname(__FILE__), '..')

	set :views, Proc.new {File.join(root, 'views') }

	configure :development do 
		register Sinatra::Reloader
	end

	get '/' do
    "Hello World"
  end

end