class AuthorsController < ApplicationController
  def index
  	@authors = Author.all
  end

  def new
  	@author = Author.new
  end

  def create 
  	@author = Author.new(allowed_params)
    if @author.save
       flash[:notice] = "user is able to login successfully"
      redirect_to authors_path
    else
      render 'new'
    end
  end
  


  def delete
  end

  def edit
  end

   private
    def allowed_params
      params.require(:author).permit(:name, :age)
    end

end
