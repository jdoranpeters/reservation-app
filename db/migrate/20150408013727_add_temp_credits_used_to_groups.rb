class AddTempCreditsUsedToGroups < ActiveRecord::Migration
  def change
  	add_column :groups, :credits_used, :integer
  end
end
