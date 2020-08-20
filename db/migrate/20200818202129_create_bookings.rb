class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.references :station, null: false, foreign_key: true
      t.datetime :start_timestamp
      t.datetime :end_timestamp

      t.timestamps
    end
  end
end
