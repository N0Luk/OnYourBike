class RemoveBikesFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :bikes, null: false, foreign_key: true
  end
end
