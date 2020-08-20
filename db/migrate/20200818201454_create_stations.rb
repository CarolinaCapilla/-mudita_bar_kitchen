class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.references :kitchen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
