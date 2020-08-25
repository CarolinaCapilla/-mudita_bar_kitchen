class AddDescriptionToStations < ActiveRecord::Migration[6.0]
  def change
    add_column :stations, :description, :string
  end
end
