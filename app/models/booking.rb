# class Booking < ApplicationRecord
#   belongs_to :user
#   belongs_to :bike

#   validates :start_date, presence: true
#   validates :end_date, presence: true
#   # validates :end_date >= :start_date
#   validates :status, presence: true
# end

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_cannot_be_before_start_date
  validates :status, presence: true, inclusion: { in: %w(pending accepted rejected) }

  private

  def end_date_cannot_be_before_start_date
    if end_date.present? && end_date < start_date
      errors.add(:end_date, "can't be before start date")
    end
  end
end
