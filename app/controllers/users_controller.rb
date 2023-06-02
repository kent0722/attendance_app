class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new 
  end
  
  def create
  end
  
  def update
    if @user.save
      flash[:success] = ""
      redirect_to root_path
    end
  end
end
