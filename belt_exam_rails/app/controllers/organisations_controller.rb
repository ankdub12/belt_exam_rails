class OrganisationsController < ApplicationController
  

  def new
  end

  def create
  	@user = User.find(params[:id])
  	@organisation = Organisation.create(name: params[:name], description: params[:description] , user_id: params[:user_id] )
  	redirect_to "/users/#{@user.id}"

  end

	def index
		

  	end
end
