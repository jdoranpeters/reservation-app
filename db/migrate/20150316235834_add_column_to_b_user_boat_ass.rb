class AddColumnToBUserBoatAss < ActiveRecord::Migration
  def change
  add_column :users, :boat_assigned, :string
  end
end
