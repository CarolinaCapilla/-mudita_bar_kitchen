class AddPeriodToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :period, :string
  end
end
