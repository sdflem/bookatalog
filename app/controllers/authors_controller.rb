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
      flash[:notice] = "User created!"
  		redirect_to author_url(@author)
  	else
      flash.now[:alert] = "Error(s) in form!"
      @author.errors.full_messages.each do |message|
        flash.now[:alert] += " "
        flash.now[:alert] += message
      end
  		render 'new'
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
      flash[:notice] = "User updated!"
      redirect_to author_url(@author)
    else
      flash.now[:alert] = "Errors in form!"
      render 'edit'
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to authors_url
  end

end
