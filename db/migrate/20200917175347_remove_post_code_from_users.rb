class RemovePostCodeFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :postcode, :string
  end
end
