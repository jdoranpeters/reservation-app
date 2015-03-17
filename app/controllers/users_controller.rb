class UsersController < ApplicationController

def index
		@users = User.all 
		
	end

	def show
		@user = User.find(params[:id])
	end


	def edit
		@user = User.find(params[:id])
	end


	def update
		@user = User.find(params[:id])
		@user.update({:first_name => params[:first_name], :last_name => params[:last_name], :address => params[:address], :city => params[:city], :state => params[:state], :zip_code => params[:zip_code], :phone => params[:phone], :email => params[:email], :boat_assigned => params[:boat_assigned], :full_share => params[:full_share], :two_thirds_share => params[:two_thirds_share], :allowed => params[:allowed]})
		flash[:info] = "Update Complete"
		redirect_to "/users" 
	end


	def destroy
		@user = User.find(params[:id])
		@user.destroy
		flash[:warning] = "User Deleted"
		redirect_to "/users"
	end





end
