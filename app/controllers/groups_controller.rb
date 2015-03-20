class GroupsController < ApplicationController


def index
	@groups = Group.all
end 

#connect these actions through join table with Users model?
# def show

# end

# def new

# end

# def create

# end


	def edit
		@group = Group.find(params[:id])
	end


	def update
		@group = Group.find(params[:id])
		@group.update({:boat_assigned => params[:boat_assigned], :full_share => params[:full_share], :two_thirds_share => params[:two_thirds_share], :credits => params[:credits]})
		flash[:info] = "Update Complete"
		redirect_to "/groups" 
	end


	def destroy
		#admin only
		@group = Group.find(params[:id])
		@group.destroy
		flash[:warning] = "Group Deleted"
		redirect_to "/groups"
	end
end









