class DeleteColumnsInUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :group_members, :string
  	remove_column :users, :sailing_experience, :text
  	
  end
end
