class SessionsController < ApplicationController
  def new
  	redirect_to '/users/index'
  end
  def login
		@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to "/users/#{@user.id}"
		else
			flash[:errors] = ["Invalid"]
			redirect_to "/sessions/new"
		end
	end
end
