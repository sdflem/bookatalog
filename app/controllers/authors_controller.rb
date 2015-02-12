class AuthorsController < ApplicationController

  def index
  	# Grab all authors.
  	@authors = Author.all
  end

  def new
  	@author = Author.new
  end

  def create
  	@author = Author.new(params.require(:author).permit(:first_name, :last_name, :year))
  	if @author.save
  		redirect_to author_url(@author)
  	else
  		redirect_to authors_url
  	end
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    if @author.update(params.require(:author).permit(:first_name, :last_name, :year))
      redirect_to author_url(@author)
    else
      redirect_to authors_url
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_url
  end

end
