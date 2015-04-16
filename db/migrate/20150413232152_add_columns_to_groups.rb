class AddColumnsToGroups < ActiveRecord::Migration
  def change
  	add_column :groups, :sailing_experience, :text
  	add_column :groups, :captain, :string
  	
  end
end
