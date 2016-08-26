class UsersController < ApplicationController
  def index
  end

  def logout
    session[:user_id] = nil
    session.clear()
    redirect_to '/sessions/new'
  end
  
  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end
    
  end

  def show
    @user = User.find(params[:id])
    @details = Organisation.all
  end

  def new
  end

  def edit
  end

  

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
