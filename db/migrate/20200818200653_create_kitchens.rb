class CreateKitchens < ActiveRecord::Migration[6.0]
  def change
    create_table :kitchens do |t|
      t.string :name
      t.string :cuisine
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
