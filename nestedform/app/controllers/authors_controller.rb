class AuthorsController < ApplicationController
 


  def index
  	@authors = Author.all
  end

  def new
 	@author = Author.new
 	3.times { @author.books.build }
  end

   def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = "Successfully created author."
      redirect_to authors_path
    else
      render :action => 'new'
    end
  end

  def delete
  end

  def show
  	    @author = Author.find(params[:id])
  end

  def author_params
      params.require(:author).permit(:name, books_attributes: [:title])
    end

end
