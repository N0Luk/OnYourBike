class AddBikeToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :bike, null: false, foreign_key: true
  end
end
