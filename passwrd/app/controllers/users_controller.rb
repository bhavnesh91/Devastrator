class UsersController < ApplicationController

  def new
  	@user = User.new
  end

  def create 
  	@user = User.new(allowed_params)
    if @user.save
       flash[:notice] = "user is able to login successfully"
      redirect_to users_path
    else
      render 'new'
    end
  end


  def index
  	    @users = User.all
  end


  private
    def allowed_params
      params.require(:user).permit(:password)
    end

 end



  