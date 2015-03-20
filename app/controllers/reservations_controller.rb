class ReservationsController < ApplicationController

def index
	@reservations = Reservation.all
	#backend calendar
	end

def show
	@reservation = Reservation.find(params[:id])
	# this should connect to each calendar entry


def new

	end

def create
	@reservation = Reservation.create({:date_reserved => params[:date_reserved], :am_block => params[:am_block], :pm_block => params[:pm_block], :full_day_block => params[:full_day_block], :boat_id => params[:boat_id], :user_id => params[:user_id], :group_id => params[:group_id]})
	end

def edit

	end

def update
		@reservation = Reservation.find(params[:id])
		@reservation.update({:date_reserved => params[:date_reserved], :am_block => params[:am_block], :pm_block => params[:pm_block], :full_day_block => params[:full_day_block], :boat_id => params[:boat_id], :user_id => params[:user_id], :group_id => params[:group_id]})
	end

def destroy
	@reservation = Reservation.find(params[:id])
		@reservation.destroy
		flash[:warning] = "Reservation Deleted"
		redirect_to #"/calendar"
	end

end
