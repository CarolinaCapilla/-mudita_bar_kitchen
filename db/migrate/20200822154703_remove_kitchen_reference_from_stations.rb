class RemoveKitchenReferenceFromStations < ActiveRecord::Migration[6.0]
  def change
    remove_reference :stations, :kitchen, null: false, foreign_key: true
  end
end
