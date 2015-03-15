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
		@user.update({:address => params[:address], :city => params[:city], :state => params[:state], :zip_code => params[:zip_code], :phone => params[:phone], :email => params[:email]})
		flash[:info] = "Update Complete"
		redirect_to "/users/#{@user.id}" 
	end


	def destroy
		@user = User.find(params[:id])
		@user.destroy
		flash[:warning] = "User Deleted"
		redirect_to "/users"
	end





end
