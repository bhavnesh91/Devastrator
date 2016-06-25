class BooksController < ApplicationController
  

  def index
  	@books = Book.all
  end

def new
@author = Author.find(params[:id])
@book = @author.books.build
end


def create
 	 @author = Author.find(params[:id])
	 @book = @author.books.build(allowed_params)
    if @book.save
       flash[:notice] = "user is able to login successfully"
      redirect_to books_path
    else
      render 'books_path'
    end
  end
  


  def delete
  end

  def edit
  end

   private
    def allowed_params
      params.require(:book).permit(:book_name, :price)
    end


end
