class AddDefaultValueToStatusOrders < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :status, :string, default: 'Pending'
  end
end
