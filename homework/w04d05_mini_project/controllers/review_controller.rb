class ReviewController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  
  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") } 

  configure :development do
      register Sinatra::Reloader
  end

  get '/' do

  	@title = "Dance Review"

    @reviews = Review.all
  
    erb :'reviews/index'
  
  end

  get '/new' do

  	@review = Review.new
    @review.id = ""
    @review.title = ""
    @review.body = ""

    erb :"reviews/new"

  end

    get '/:id' do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single review object available in the template
    @review = Review.find id
    
    erb :'reviews/show'
    
  end

end