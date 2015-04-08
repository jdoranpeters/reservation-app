class TakeAwayBoatAssigned < ActiveRecord::Migration
  def change
  remove_column :groups, :boat_assigned, :string
  add_column :groups, :boat_id, :integer


  end
end
