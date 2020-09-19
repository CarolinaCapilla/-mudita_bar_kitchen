class AddAddressToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :address, :string, default: "138 Kingsland Road"
  end
end
