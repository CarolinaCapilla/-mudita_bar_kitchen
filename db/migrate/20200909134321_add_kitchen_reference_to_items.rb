class AddKitchenReferenceToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :kitchen, null: false, foreign_key: true
  end
end
