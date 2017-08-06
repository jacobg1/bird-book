class Place < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :country, :state, :city, :place_photo_url, presence: true
end
