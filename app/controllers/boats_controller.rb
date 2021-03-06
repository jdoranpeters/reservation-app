class BoatsController < ApplicationController

	def index
		@boats = Boat.all
	end

	def show
 		@boat = Boat.find(params[:id])
	end


	def new
		if user_signed_in? && current_user.admin?
		else render :file => "/public/404.html", :status => 404
	 end
	end

	def create
		boat = Boat.create({:image_url => params[:image_url], :name => params[:name], :make => params[:make],:size => params[:size], :harbor => params[:harbor], :shares_possible => params[:shares_possible], :full_share_price => params[:full_share_price], :two_thirds_share_price => params[:two_thirds_share_price], :half_credit_AM_MTWTH => params[:half_credit_AM_MTWTH], :half_credit_PM_MTWTH => params[:half_credit_PM_MTWTH], :half_credit_AM_F => params[:half_credit_AM_F], :half_credit_PM_F => params[:half_credit_PM_F], :half_credit_AM_SAT => params[:half_credit_AM_SAT], :half_credit_PM_SAT => params[:half_credit_PM_SAT], :full_credit_MTWTH => params[:full_credit_MTWTH], :full_credit_F => params[:full_credit_F], :full_credit_SAT => params[:full_credit_SAT], :full_credit_SUN => params[:full_credit_SUN], :two_thirds_credits_total => params[:two_thirds_credits_total], :full_credits_total => params[:full_credits_total]}) 
		flash[:success] = "Boat added"
		redirect_to '/boats' 
	end


	def edit
		if user_signed_in? && current_user.admin?
			@boat = Boat.find(params[:id])
		else render :file => "/public/404.html", :status => 404
		end
	end


	def update
		@boat = Boat.find(params[:id])
		@boat.update({:image_url => params[:image_url], :name => params[:name], :make => params[:make], :size => params[:size], :harbor => params[:harbor], :shares_possible => params[:shares_possible], :full_share_price => params[:full_share_price], :two_thirds_share_price => params[:two_thirds_share_price], :half_credit_AM_MTWTH => params[:half_credit_AM_MTWTH], :half_credit_PM_MTWTH => params[:half_credit_PM_MTWTH], :half_credit_AM_F => params[:half_credit_AM_F], :half_credit_PM_F => params[:half_credit_PM_F], :half_credit_AM_SAT => params[:half_credit_AM_SAT], :half_credit_PM_SAT => params[:half_credit_PM_SAT], :full_credit_MTWTH => params[:full_credit_MTWTH], :full_credit_F => params[:full_credit_F], :full_credit_SAT => params[:full_credit_SAT], :full_credit_SUN => params[:full_credit_SUN], :two_thirds_credits_total => params[:two_thirds_credits_total], :full_credits_total => params[:full_credits_total]})
		flash[:info] = "Update Complete"
		redirect_to "/boats/#{@boat.id}" 

	end


	def destroy
		@boat = Boat.find(params[:id])
		@boat.destroy
		flash[:warning] = "Boat Deleted"
		redirect_to "/boats"
	end



end
