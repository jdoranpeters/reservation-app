class AddGroupMembersToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :group_members, :string
  	
  end
end
