class AddingUserInfo < ActiveRecord::Migration
  def change
  add_column :users, :first_name, :string 
  add_column :users, :last_name, :string
  add_column :users, :address, :string
  add_column :users, :city, :string
  add_column :users, :state, :string
  add_column :users, :zip_code, :string
  add_column :users, :phone, :string
  add_column :users, :boat_preference, :string
  add_column :users, :full_share, :string
  add_column :users, :two_thirds_share, :string

  end
end
