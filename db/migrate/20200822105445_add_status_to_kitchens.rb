class AddStatusToKitchens < ActiveRecord::Migration[6.0]
  def change
    add_column :kitchens, :status, :boolean, default: false
  end
end
