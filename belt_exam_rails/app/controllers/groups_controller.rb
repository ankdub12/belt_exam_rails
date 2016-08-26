class GroupsController < ApplicationController
  def index
		@organisation = Organisation.find(params[:id])
		@user = User.find(current_user)

		@group = Organisation.all
		@organisation_id = Organisation.find(params[:id])
		group_create = Group.create(user: current_user, organisation: params[:organisation_id])

  end

  def new
		@group = Organisation.all
		@organisation_id = Organisation.find(params[:id])
		group_create = Group.create(user: current_user, organisation: params[:organisation_id])
		redirect_to :back
  end

  def destroy
  	leavegroup = Group.destroy
  end

end
