class BooksController < ApplicationController

  def index
    render :"book/index"
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @num = params[:num]
    render :"book/show"

  end

  # GET /posts/new
  def new
    render :"book/new"
     
  end

  # GET /posts/1/edit
  def edit
     @num = params[:num]
    render :"book/edit"
     
  end

  # POST /posts
  # POST /posts.json
  def create
    render :"book/create"

     
  end
  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    render :"book/update"
     
  end
  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @num = params[:num]
    render :"destroy/create"
     
  end

end

