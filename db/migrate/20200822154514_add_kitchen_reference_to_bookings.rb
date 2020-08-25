class AddKitchenReferenceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :kitchen, null: false, foreign_key: true
  end
end
