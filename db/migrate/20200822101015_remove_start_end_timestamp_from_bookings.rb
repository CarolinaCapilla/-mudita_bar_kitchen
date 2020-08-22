class RemoveStartEndTimestampFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :start_timestamp, :datetime
    remove_column :bookings, :end_timestamp, :datetime
  end
end
