class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :description, :text
    add_column :users, :chef, :boolean, :default => false
    #Ex:- :default =>''
  end
end
