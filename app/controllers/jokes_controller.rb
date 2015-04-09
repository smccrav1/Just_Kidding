class JokesController < ApplicationController
  
    before_filter :authorize, only: [:new,:edit] 
  
  def index
    @jokes = Joke.all
  end

  def create
   Joke.create(user: params[:user], content: params[:content], comment: params[:comment]) 
   redirect_to jokes_path, notice: "Joke added!"
  end
  
  def new
    @joke = Joke.new
  end
  
  def edit
    @joke = Joke.find(params[:id])
  end
  
  def update
    q = Joke.find(params[:id])
    q.update(content: params[:content], comment: params[:comment])
  end
end
