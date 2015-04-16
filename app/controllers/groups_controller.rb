class GroupsController < ApplicationController


def index
	@groups = Group.all
end 

#connect these actions through join table with Users model?
# def show

# end

def new
	@boats = Boat.all 
	end

def create
	@group = Group.create({:credits => params[:credits], :boat_id => params[:boat_id], :two_thirds_share => params[:two_thirds_share], :full_share => params[:full_share], :captain => params[:captain], :sailing_experience => params[:sailing_experience]})
  
  @current_shares_possible = @group.boat.shares_possible

  if @group.save && @group.two_thirds_share?
  	@new_shares_possible = (@current_shares_possible - 1)
  	@group.boat.update({:shares_possible => @new_shares_possible})
  	@group.update({:credits => @group.boat.two_thirds_credits_total})
  elsif @group.save && @group.full_share?
  	@new_shares_possible = (@current_shares_possible -1)
  	@group.boat.update({:shares_possible => @new_shares_possible})
  	@group.update({:credits => @group.boat.full_credits_total})

  end

  flash[:success] = "Group Added"
  	redirect_to '/groups'

end


	def edit
		@group = Group.find(params[:id])
	end


	def update
		@group = Group.find(params[:id])
		@group.update({:boat_assigned => params[:boat_assigned], :full_share => params[:full_share], :two_thirds_share => params[:two_thirds_share], :credits => params[:credits], :captain => params[:captain], :sailing_experience => params[:sailing_experience]})
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









