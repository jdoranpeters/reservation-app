class AddColumnsToReservations < ActiveRecord::Migration
  def change
  add_column :reservations, :date_reserved, :datetime
  add_column :reservations, :am_block, :boolean, :default => false
  add_column :reservations, :pm_block, :boolean, :default => false
  add_column :reservations, :full_day_block, :boolean, :default => false
  add_column :reservations, :boat_id, :integer
  add_column :reservations, :user_id, :integer
  add_column :reservations, :group_id, :integer
 



  end
end
