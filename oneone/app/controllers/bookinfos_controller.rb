class BookinfosController < ApplicationController
    
   def index
  	@bookinfos = Bookinfo.all
  end

def new
	@book = Book.find(params[:id])
	@bookinfo = @book.bookinfos.build
end


def create
 	 @book = Book.find(params[:id])
	 @bookinfos = @book.bookinfos.build(allowed_params)
    if @book.save
       flash[:notice] = "user is able to login successfully"
      redirect_to bookinfos_path
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
      params.require(:bookinfo).permit(:pages, :language)
    end
end
