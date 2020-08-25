class AddChefStatusToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :chef_status, :boolean, default: false
  end
end
