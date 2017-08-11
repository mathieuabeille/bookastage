class Stage < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :address
  mount_uploader :photo, PhotoUploader
  after_validation :geocode, if: :address_changed?

end
