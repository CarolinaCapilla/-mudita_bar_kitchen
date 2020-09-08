class AddIngredientsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :ingredient, :string
  end
end
