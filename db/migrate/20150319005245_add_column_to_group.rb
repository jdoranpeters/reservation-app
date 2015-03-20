class AddColumnToGroup < ActiveRecord::Migration
  def change
  add_column :groups, :boat_assigned, :string
  add_column :groups, :credits, :integer
  add_column :groups, :full_share, :boolean, :default => false
	add_column :groups, :two_thirds_share, :boolean, :default => false
  remove_column :groups, :group_id, :integer
  remove_column :groups, :group_size, :integer

  end
end
