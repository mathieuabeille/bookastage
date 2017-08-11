class Stage < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :full_address
  mount_uploader :photo, PhotoUploader
  after_validation :geocode, if: :full_address_changed?

  def full_address
    "#{address} #{city}"
  end

  def full_address_changed?
    address_changed? || city_changed?
  end
end
