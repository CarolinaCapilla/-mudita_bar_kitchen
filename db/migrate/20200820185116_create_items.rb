class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :dish
      t.text :description
      t.string :category
      t.float :price
      t.string :allergen

      t.timestamps
    end
  end
end
