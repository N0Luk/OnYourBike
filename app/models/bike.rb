class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  include PgSearch::Model

  pg_search_scope :global_search,
  against: [ :bike_type, :price, :location],
  using: {
    tsearch: { prefix: true }
  }
end
